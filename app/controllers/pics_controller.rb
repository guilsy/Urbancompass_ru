class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]

  # GET /pics
  # GET /pics.json
  def index
    @pics = Pic.all
  end

  # GET /pics/1
  # GET /pics/1.json
  def show
  end

  # GET /pics/new
  def new
    @pic = Pic.new
  end

  # GET /pics/1/edit
  def edit
  end

  # POST /pics
  # POST /pics.json
  def create
    @pin = Pin.find(params[:id])
    @pic = @pin.pics.create(params[:comment].permit(:commenter, :body))
    redirect_to @pin_path   
  end

  # PATCH/PUT /pics/1
  # PATCH/PUT /pics/1.json
  def update
    respond_to do |format|
      if @pic.update(pic_params)
        format.html { redirect_to @pic, notice: 'Pic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pics/1
  # DELETE /pics/1.json
  def destroy
    @pic.destroy
    respond_to do |format|
      format.html { redirect_to pics_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pic
      @pic = Pic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pic_params
      params[:pic]
    end
end