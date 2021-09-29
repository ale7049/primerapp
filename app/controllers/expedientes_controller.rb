class ExpedientesController < ApplicationController
  before_action :set_expediente, only: %i[ show edit update destroy ]

  #GET /expedientes or /expedientes.json
  def index
    @expedientes = Expediente.all
  end

  # GET /expedientes/1 or /expedientes/1.json
  def show
  end

  # GET /expedientes/new
  def new
    @expediente = Expediente.new
  end

  # GET /expedientes/1/edit
  def edit
  end

  # POST /expedientes or /expedientes.json
  def create
    @expediente = Expediente.new(expediente_params)

    respond_to do |format|
      if @expediente.save
        format.html { redirect_to @expediente, notice: "Expediente was successfully created." }
        format.json { render :show, status: :created, location: @expediente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expedientes/1 or /expedientes/1.json
  def update
    respond_to do |format|
      if @expediente.update(expediente_params)
        format.html { redirect_to @expediente, notice: "Expediente was successfully updated." }
        format.json { render :show, status: :ok, location: @expediente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @expediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expedientes/1 or /expedientes/1.json
  def destroy
    @expediente.destroy
    respond_to do |format|
      format.html { redirect_to expedientes_url, notice: "Expediente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expediente
      @expediente = Expediente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expediente_params
      params.require(:expediente).permit(:escuela, :alumno, :numero_boleta, :status)
    end
end
