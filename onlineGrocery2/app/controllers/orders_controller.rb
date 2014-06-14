class OrdersController < ApplicationController
  skip_before_filter :authorize, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.paginate :page => params[:page], :order => 'created_at desc', :per_page => 25
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
   # @cart = current_cart
  end

  # GET /orders/new
  def new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to store_url, notice: "Your cart is empty"
      return
    end
    @order = Order.new
    respond_to do |format|
      format.html # new.html.erb
      format.json {render json: @order}
    end
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    # set initial values for order object
    @order = Order.new(order_params)
    @order.time_received = Time.current
    @order.picked_up = false
    @order.ready = false
    @order.time_picked_up = nil
    @order.add_line_items_from_cart(current_cart)
    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html { redirect_to store_url, notice: 'Thank you for your order.' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        @cart = current_cart
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      @order.update_attributes(order_params)
      if !@order.picked_up then
        @order.time_picked_up = nil
      else
        @order.time_picked_up = Time.current
      end
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { respond_with_bip(@order) }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :projected_pick_up_time, :time_picked_up, :ready, :picked_up, :pay_type)
    end
end
