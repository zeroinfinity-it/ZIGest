json.array!(@invoices) do |invoice|
  json.extract! invoice, :titolo, :descrizione, :image_url, :price
  json.url invoice_url(invoice, format: :json)
end
