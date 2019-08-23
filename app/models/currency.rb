# frozen_string_literal: true

class Currency < ApplicationRecord
  belongs_to :bank_account

  validates :name, presence: true
end
