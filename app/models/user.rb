class User < ApplicationRecord
  # Enable this if working with the login using other apps. Ex. google, facebook, linked etc..
  # :omniauthable

  # Enable these if working with the multi-user application
  # :confirmable, :lockable, :timeoutable, :trackable, :registerable, :recoverable
  devise :database_authenticatable, :rememberable, :validatable

  include FullNameConcern # app/models/concerns/full_name_concern.rb
end
