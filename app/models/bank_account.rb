# frozen_string_literal: true

class BankAccount < ApplicationRecord
  belongs_to :user
  has_one :currency, dependent: :destroy

  validates :name, :user, presence: true
end
