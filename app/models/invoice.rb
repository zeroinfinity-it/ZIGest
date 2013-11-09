class Invoice < ActiveRecord::Base
		has_many :invoice_details
		belongs_to :users
	validates :titolo, :descrizione, :VAT, :TotaleNoVat, :DataEmissione, :user_id, :presence => true
	
end
