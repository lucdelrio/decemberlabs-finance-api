class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :type
      t.float :amount
      
      t.references  :bank_account, foreign_key: true
      t.timestamps
    end
  end
end
