# frozen_string_literal: true

class User < ApplicationRecord
  has_many :bank_account, dependent: :destroy

  validates :name, presence: true
end
