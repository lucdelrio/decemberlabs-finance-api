# frozen_string_literal: true

class BankAccount < ApplicationRecord
  has_one :currency, dependent: :destroy
end
