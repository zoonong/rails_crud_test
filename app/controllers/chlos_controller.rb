class ChlosController < ApplicationController
  before_action :set_chlo, only: %i[ show edit update destroy ]

  # GET /chlos or /chlos.json
  def index
    @chlos = Chlo.all
  end

  # GET /chlos/1 or /chlos/1.json
  def show
  end

  # GET /chlos/new
  def new
    @chlo = Chlo.new
  end

  # GET /chlos/1/edit
  def edit
  end

  # POST /chlos or /chlos.json
  def create
    @chlo = Chlo.new(chlo_params)

    respond_to do |format|
      if @chlo.save
        format.html { redirect_to chlo_url(@chlo), notice: "Chlo was successfully created." }
        format.json { render :show, status: :created, location: @chlo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @chlo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chlos/1 or /chlos/1.json
  def update
    respond_to do |format|
      if @chlo.update(chlo_params)
        format.html { redirect_to chlo_url(@chlo), notice: "Chlo was successfully updated." }
        format.json { render :show, status: :ok, location: @chlo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @chlo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chlos/1 or /chlos/1.json
  def destroy
    byebug
    @chlo.destroy

    respond_to do |format|
      format.html { redirect_to chlos_url, notice: "Chlo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chlo
      @chlo = Chlo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def chlo_params
      params.fetch(:chlo, {})
    end
end
