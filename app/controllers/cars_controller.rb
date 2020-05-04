class CarsController < InheritedResources::Base

  def index
    @cars = Car.search(params[:search])
  end

  def show
    @car=Car.find(params[:id])
  end


  def new
    @car = Car.new
  end


  def edit
  end


  def create
    @car = Car.new(car_params)
    respond_to do |format|
      if @car.save
        format.html { redirect_to cars_path}
        format.js { @current_car = @car }
        format.json { render action: 'show', status: :created, location: @car }
      else
        format.html { render action: 'new' }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private

    def car_params
      params.require(:car).permit(:brand_id, :year, :image_url, :model, :exterior_color, :interior_color, :engine, :fuel_consumption, :options, :search)
    end

end
