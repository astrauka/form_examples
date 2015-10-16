class User < ActiveRecord::Base
  has_one :user_profile, dependent: :destroy
end
