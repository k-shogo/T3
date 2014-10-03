class DeclaresController < ApplicationController
  load_and_authorize_resource
  before_action :set_declare, only: [:show, :edit, :update, :destroy]

  # GET /declares
  # GET /declares.json
  def index
    @declares = Declare.all
  end

  # GET /declares/1
  # GET /declares/1.json
  def show
  end

  # GET /declares/new
  def new
    @declare = Declare.new
  end

  # GET /declares/1/edit
  def edit
  end

  # POST /declares
  # POST /declares.json
  def create
    @declare = Declare.new(declare_params)

    respond_to do |format|
      if @declare.save
        format.html { redirect_to @declare, notice: 'Declare was successfully created.' }
        format.json { render :show, status: :created, location: @declare }
      else
        format.html { render :new }
        format.json { render json: @declare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /declares/1
  # PATCH/PUT /declares/1.json
  def update
    respond_to do |format|
      if @declare.update(declare_params)
        format.html { redirect_to @declare, notice: 'Declare was successfully updated.' }
        format.json { render :show, status: :ok, location: @declare }
      else
        format.html { render :edit }
        format.json { render json: @declare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /declares/1
  # DELETE /declares/1.json
  def destroy
    @declare.destroy
    respond_to do |format|
      format.html { redirect_to declares_url, notice: 'Declare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_declare
      @declare = Declare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def declare_params
      params.require(:declare).permit(:body, :description, :user_id)
    end
end
