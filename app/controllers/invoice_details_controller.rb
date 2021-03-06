class InvoiceDetailsController < ApplicationController
  before_action :set_invoice_detail, only: [:show, :edit, :update, :destroy]

  # GET /invoice_details
  # GET /invoice_details.json
  def index
    @invoice_details = InvoiceDetail.all
  end

  # GET /invoice_details/1
  # GET /invoice_details/1.json
  def show
  end

  # GET /invoice_details/new
  def new
    @invoice = Invoice.find(params[:invoice_id])
    @invoice_detail = @invoice.invoice_details.new
  end

  # GET /invoice_details/1/edit
  def edit
    @invoice = Invoice.find(params[:invoice_id])
  end

  # POST /invoice_details
  # POST /invoice_details.json
  def create

    @invoice = Invoice.find(params[:invoice_id])
    
    @invoice_detail =  @invoice.invoice_details.build(invoice_detail_params)


    respond_to do |format|
      if @invoice_detail.save
        format.html { redirect_to invoice_path(@invoice), notice: 'Invoice detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: invoice_path(@invoice) }
      else
        format.html { render action: 'new' }
        format.json { render json: @invoice_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invoice_details/1
  # PATCH/PUT /invoice_details/1.json
  def update
     @invoice = Invoice.find(params[:invoice_id])

    respond_to do |format|
      if @invoice_detail.update(invoice_detail_params)
        format.html { redirect_to invoice_path(@invoice), notice: 'Invoice detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @invoice_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoice_details/1
  # DELETE /invoice_details/1.json
  def destroy
    @invoice = Invoice.find(params[:invoice_id])
    @invoice_detail.destroy
    respond_to do |format|
      format.html { redirect_to invoice_path(@invoice) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invoice_detail
      @invoice_detail = InvoiceDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invoice_detail_params
      params.require(:invoice_detail).permit(:descrizione, :VAT, :ImportoNoVatSingolo, :Qta, :invoice_id)
    end
end
