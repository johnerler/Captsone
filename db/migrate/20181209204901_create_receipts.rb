class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.decimal :totalAmount, precision: 9, scale: 2
      t.date :date
      t.string :merchantName

      t.timestamps
    end
  end
end
