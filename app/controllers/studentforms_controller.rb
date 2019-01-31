class StudentformsController < ApplicationController
  before_action :set_studentform, only: [:show, :edit, :update, :destroy]

  # GET /studentforms
  # GET /studentforms.json
  def index
    @studentforms = Studentform.all
  end

  # GET /studentforms/1
  # GET /studentforms/1.json
  def show
  end

  # GET /studentforms/new
  def new
    @studentform = Studentform.new
  end

  # GET /studentforms/1/edit
  def edit
  end

  # POST /studentforms
  # POST /studentforms.json
  def create
    @studentform = Studentform.new(studentform_params)

    respond_to do |format|
      if @studentform.save
        format.html { redirect_to @studentform, notice: 'Studentform was successfully created.' }
        format.json { render :show, status: :created, location: @studentform }
      else
        format.html { render :new }
        format.json { render json: @studentform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentforms/1
  # PATCH/PUT /studentforms/1.json
  def update
    respond_to do |format|
      if @studentform.update(studentform_params)
        format.html { redirect_to @studentform, notice: 'Studentform was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentform }
      else
        format.html { render :edit }
        format.json { render json: @studentform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentforms/1
  # DELETE /studentforms/1.json
  def destroy
    @studentform.destroy
    respond_to do |format|
      format.html { redirect_to studentforms_url, notice: 'Studentform was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentform
      @studentform = Studentform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentform_params
      params.require(:studentform).permit(:regno, :name, :telephone, :address)
    end
end
