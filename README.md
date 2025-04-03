# Monolith Rails Boilerplate

### Installed packages
- Powered with [Vite Rails](https://vite-ruby.netlify.app/guide/rails.html)
- Authentication using [Devise Gem](https://github.com/heartcombo/devise)
- Testing Framework with [RSpec](https://github.com/rspec/rspec-rails)
- [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails) for blueprint for creating test data
- Process Manager using [Overmind](https://github.com/DarthSim/overmind)

### Features
- Separation between public and admin views with defined layouts
- Basic Authentication with complete devise modules

### Development Commands
`./bin/dev` - command for running the server
 - in `Procfile.dev` there are 3 types of commands that we run automatically
    - `vite` : for starting the vite development server
    - `web` : running the rails server in port 3000
    - `assets` : compiling assets once we do changes in resources

### Deployment
 #### [Render](render.com)
  Setup Environment Variables for these:
  - `MONOLITH_RAILS_BOILERPLATE_HOST_NAME`
  - `MONOLITH_RAILS_BOILERPLATE_PORT`
  - `MONOLITH_RAILS_BOILERPLATE_DB_NAME`
  - `MONOLITH_RAILS_BOILERPLATE_USERNAME`
  - `MONOLITH_RAILS_BOILERPLATE_DATABASE_PASSWORD`
  - `SENDGRID_API_KEY`
  - `SITE_URL`
