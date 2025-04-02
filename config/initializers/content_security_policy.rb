Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https
    policy.font_src :self, :https, :data
    policy.img_src :self, :https, :data
    policy.object_src :none
    policy.script_src :self, :https
    policy.style_src :self, :https, :unsafe_inline
    policy.connect_src :self, :https

    if Rails.env.development?
      # Add Vite dev server URLs
      vite_server = "http://#{ViteRuby.config.host_with_port}"
      policy.connect_src *policy.connect_src, :ws, vite_server
      policy.script_src *policy.script_src, vite_server, :unsafe_eval    end
  end

  # Generate nonces for every request
  config.content_security_policy_nonce_directives = %w[script-src]
  config.content_security_policy_nonce_generator = ->(request) do
    if request.env["HTTP_TURBO_REFERRER"].present?
      request.env["HTTP_X_TURBO_NONCE"]
    else
      SecureRandom.base64(16)
    end
  end

  # Report violations without enforcing the policy in test environment
  config.content_security_policy_report_only = true if Rails.env.test?

  # If using Capybara/Selenium, disable CSP in system tests
  if Rails.env.test? && defined?(Capybara)
    RSpec.configure do |config|
      config.before(:each, type: :system) do
        page.driver.browser.execute_script(
          "document.head.innerHTML += '<meta http-equiv=\"Content-Security-Policy\" content=\"default-src * \"/>'"
        )
      end
    end
  end
end
