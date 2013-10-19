json.array!(@invoice_details) do |invoice_detail|
  json.extract! invoice_detail, :descrizione, :VAT, :ImportoNoVatSingolo, :Qta, :invoice_id
  json.url invoice_detail_url(invoice_detail, format: :json)
end
