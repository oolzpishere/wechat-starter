class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :openid, null: false
      t.string :hash_store
      t.timestamps null: false
    end
    add_index :invoices, :openid, unique: true
  end
end
