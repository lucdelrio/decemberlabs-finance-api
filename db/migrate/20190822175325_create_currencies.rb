class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string      :name,  default: 'dolar'
      t.float       :amount, default: 0
      t.datetime    :deleted_at

      t.references  :bank_account, foreign_key: true
      t.timestamps
    end
  end
end
