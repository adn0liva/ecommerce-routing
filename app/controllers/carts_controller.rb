class CartsController < ApplicationController
  before_action :set_cart, only: %i[ show edit update destroy ]

  # GET /carts or /carts.json
  def index
    @cart = Cart.new
  end
  
  def new_cart_user
    respond_to do |format|
      if request.get? 
        format.html { redirect_to carts_url }
      else
        @cart = Cart.new(cart_user_params)
        @articles = Article.all    
        unless @cart.validate_user
          format.html { redirect_to carts_url }
        else
          format.html { render :new_cart_user }
        end
      end
    end
  end

  # POST /carts or /carts.json
  def create
    @cart = Cart.new(cart_params)
    
    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: t(:notice_cart_created) }
        format.json { render :show, status: :created, location: @cart }
      else
        @articles = Article.all
        format.html { render :new_cart_user, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(
        :name_user,
        :product,
        :quantity_product,
        :latitude,
        :longitude
      )
    end
    def cart_user_params
      params.require(:cart).permit(:name_user)
    end
end
