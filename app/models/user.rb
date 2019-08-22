# frozen_string_literal: true

class User < ApplicationRecord
  has_many :bank_account, dependent: :destroy
end
