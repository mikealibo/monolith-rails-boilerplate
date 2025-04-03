class User < ApplicationRecord
  # Enable this if working with the login using other apps. Ex. google, facebook, linked etc..
  # :omniauthable

  # Enable these if working with the multi-user application
  # :lockable, :timeoutable, :trackable, :registerable, :recoverable
  devise :database_authenticatable, :rememberable, :validatable, :confirmable

  include FullNameConcern # app/models/concerns/full_name_concern.rb
end
