class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.string      :name
      t.datetime    :deleted_at
      
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end
