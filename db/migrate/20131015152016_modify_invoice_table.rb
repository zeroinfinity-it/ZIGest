class ModifyInvoiceTable < ActiveRecord::Migration
  def change
  	remove_column :invoices, :image_url
  end
end
