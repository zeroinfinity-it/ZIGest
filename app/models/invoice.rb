class Invoice < ActiveRecord::Base
		has_many :invoice_details
	validates :titolo, :descrizione, :VAT, :TotaleNoVat, :DataEmissione, :presence => true
	


end
