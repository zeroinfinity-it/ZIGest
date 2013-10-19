class ZigestController < ApplicationController
  def index
  	@invoices = Invoice.all
  end
end
