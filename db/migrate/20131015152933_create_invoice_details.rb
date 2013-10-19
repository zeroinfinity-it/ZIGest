class CreateInvoiceDetails < ActiveRecord::Migration
  def change
    create_table :invoice_details do |t|
      t.text :descrizione
      t.decimal :VAT, :precision => 8, :scale => 2
      t.decimal :ImportoNoVatSingolo, :precision => 16, :scale => 5
      t.integer :Qta
      t.integer :invoice_id

      t.timestamps
    end
  end
end
