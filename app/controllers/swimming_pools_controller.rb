class SwimmingPoolsController < ApplicationController
  before_action :find_swimming_pool, only: [:show, :edit, :update, :destroy]

  def index
    @swimming_pools = SwimmingPool.all
    @swimming_pools = SwimmingPool.where.not(latitude: nil, longitude: nil)

    @markers = @swimming_pools.map do |swimming_pool|
      {
        lat: swimming_pool.latitude,
        lng: swimming_pool.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { swimming_pool: swimming_pool })
      }
    end
  end

  def show
  end

  def new
    @swimming_pool = SwimmingPool.new
  end

  def create
    @swimming_pool = SwimmingPool.new(swimming_pool_params)
    if @swimming_pool.save
      redirect_to @swimming_pool, notice: "Votre piscine a bien été enregistrée !"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @swimming_pool.update(swimming_pool_params)
      redirect_to @swimming_pool, notice: "Votre piscine a bien été modifiée !"
    else
      render :edit
    end
  end

  def destroy
    @swimming_pool.destroy
    redirect_to swimming_pools_path, notice: "Votre piscine a bien été supprimée !"
  end

  private

  def swimming_pool_params
    params.require(:swimming_pool).permit(:name, :description, :address, :length, :width, :heated, :type, :capacity, :availability, :price)
  end

  def find_swimming_pool
    @swimming_pool = SwimmingPool.find(params[:id])
  end
end
