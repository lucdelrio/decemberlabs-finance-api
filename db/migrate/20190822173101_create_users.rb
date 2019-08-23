class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :surname
      t.integer     :idcard
      t.datetime    :deleted_at

      t.timestamps
    end
  end
end
