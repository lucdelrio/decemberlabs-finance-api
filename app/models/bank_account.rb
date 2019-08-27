# frozen_string_literal: true

class BankAccount < ApplicationRecord
  belongs_to :user
  has_one :currency, dependent: :destroy

  validates :name, :user, presence: true

  def transfer_money(amount, account)
    currency.amount -= amount
    currency.save

    target_currency = account.currency
    target_currency.amount += amount
    target_currency.save
  end
end
