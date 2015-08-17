class AssetNamesController < ApplicationController
  before_action :set_asset_name, only: [:show, :edit, :update, :destroy]

  # GET /asset_names
  # GET /asset_names.json
  def index
    @asset_names = AssetName.all
  end

  # GET /asset_names/1
  # GET /asset_names/1.json
  def show
  end

  # GET /asset_names/new
  def new
    @asset_name = AssetName.new
  end

  # GET /asset_names/1/edit
  def edit
  end

  # POST /asset_names
  # POST /asset_names.json
  def create
    line =2
    errors = []
    line_number = 0
    unless asset_name_params.length < 2
      errors.push(line_number, "Hình thức không đúng: #{line}")
    end
    binding.pry

    @asset_name = AssetName.new(asset_name_params)
    render json: {}

    #respond_to do |format|
    #  if @asset_name.save
    #    format.html { redirect_to @asset_name, notice: 'Asset name was successfully created.' }
    #    format.json { render :show, status: :created, location: @asset_name }
    #  else
    #    format.html { render :new }
    #    format.json { render json: @asset_name.errors, status: :unprocessable_entity }
    #  end
    #end
  end

  # PATCH/PUT /asset_names/1
  # PATCH/PUT /asset_names/1.json
  def update
    respond_to do |format|
      if @asset_name.update(asset_name_params)
        format.html { redirect_to @asset_name, notice: 'Asset name was successfully updated.' }
        format.json { render :show, status: :ok, location: @asset_name }
      else
        format.html { render :edit }
        format.json { render json: @asset_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asset_names/1
  # DELETE /asset_names/1.json
  def destroy
    @asset_name.destroy
    respond_to do |format|
      format.html { redirect_to asset_names_url, notice: 'Asset name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asset_name
      @asset_name = AssetName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asset_name_params
      params.require(:asset_name).permit(:game, :score)
    end
end
