class UserInfo < ApplicationRecord
  has_many :books, dependent: :destroy
  belongs_to :user

  attachment :profile_image
end
