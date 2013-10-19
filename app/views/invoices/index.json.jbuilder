json.array!(@invoices) do |invoice|
  json.extract! invoice, :titolo, :descrizione
  json.url invoice_url(invoice, format: :json)
end
