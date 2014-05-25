class DataLettersController < ApplicationController
  before_action :set_data_letter, only: [:show, :edit, :update, :destroy]

  # GET /data_letters
  # GET /data_letters.json
  def index
    @data_letters = DataLetter.all
  end

  # GET /data_letters/1
  # GET /data_letters/1.json
  def show
  end

  # GET /data_letters/new
  def new
    @data_letter = DataLetter.new
  end

  # GET /data_letters/1/edit
  def edit
  end

  # POST /data_letters
  # POST /data_letters.json
  def create
    @data_letter = DataLetter.new(data_letter_params)

    respond_to do |format|
      if @data_letter.save
        format.html { redirect_to @data_letter, notice: 'Data letter was successfully created.' }
        format.json { render :show, status: :created, location: @data_letter }
      else
        format.html { render :new }
        format.json { render json: @data_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_letters/1
  # PATCH/PUT /data_letters/1.json
  def update
    respond_to do |format|
      if @data_letter.update(data_letter_params)
        format.html { redirect_to @data_letter, notice: 'Data letter was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_letter }
      else
        format.html { render :edit }
        format.json { render json: @data_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_letters/1
  # DELETE /data_letters/1.json
  def destroy
    @data_letter.destroy
    respond_to do |format|
      format.html { redirect_to data_letters_url, notice: 'Data letter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_letter
      @data_letter = DataLetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_letter_params
      params.require(:data_letter).permit(:titel, :text, :material_id)
    end
end
