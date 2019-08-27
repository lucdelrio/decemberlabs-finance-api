# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates_length_of       :password, maximum: 72, minimum: 8, allow_nil: true, allow_blank: false
  validates_confirmation_of :password, allow_nil: true, allow_blank: false

  before_validation {
    (self.email = self.email.to_s.downcase) && (self.username = self.username.to_s.downcase) 
  }

  validates_presence_of     :email, :username
  validates_uniqueness_of   :email, :username

  has_many :bank_accounts, dependent: :destroy

  validates :name, presence: true
end
