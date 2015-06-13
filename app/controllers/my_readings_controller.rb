class MyReadingsController < ApplicationController
  before_action :set_my_reading, only: [:show, :edit, :update, :destroy]

  # GET /my_readings
  # GET /my_readings.json
  def index
    @my_readings = MyReading.all
  end

  # GET /my_readings/1
  # GET /my_readings/1.json
  def show
  end

  # GET /my_readings/new
  def new
    @my_reading = MyReading.new
  end

  # GET /my_readings/1/edit
  def edit
  end

  # POST /my_readings
  # POST /my_readings.json
  def create
    @my_reading = MyReading.new(my_reading_params)

    respond_to do |format|
      if @my_reading.save
        format.html { redirect_to @my_reading, notice: 'My reading was successfully created.' }
        format.json { render :show, status: :created, location: @my_reading }
      else
        format.html { render :new }
        format.json { render json: @my_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_readings/1
  # PATCH/PUT /my_readings/1.json
  def update
    respond_to do |format|
      if @my_reading.update(my_reading_params)
        format.html { redirect_to @my_reading, notice: 'My reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_reading }
      else
        format.html { render :edit }
        format.json { render json: @my_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_readings/1
  # DELETE /my_readings/1.json
  def destroy
    @my_reading.destroy
    respond_to do |format|
      format.html { redirect_to my_readings_url, notice: 'My reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_reading
      @my_reading = MyReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_reading_params
      params.require(:my_reading).permit(:book, :author, :price, :publisher, :release_date, :isbn, :image)
    end
end
