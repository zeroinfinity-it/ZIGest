class CreateInvoices < ActiveRecord::Migration
    def self.up
	    create_table :invoices do |t|
	      t.string :titolo
	      t.text :descrizione
	      t.string :image_url
	      t.decimal :price, :precision => 8, :scale => 2

	      t.timestamps
	    end
  	end

  	def self.down 
  		drop_table :invoices
	end
end
