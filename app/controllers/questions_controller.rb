class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  def outgoing
    
  end

  def incoming
    @questions = Question.where("user_id = ?", 19)
    index = 0
    @ids = []
    @questions.each do |q|
      index += 1
      @ids << q.id
    end

    @ids.each do |i|
      if (params[i.to_s] != "")
        a = Answer.new
        a.description = params[i.to_s]
        a.question_id = i.to_s
        a.save
      end
    end
  end

  # GET /questions/new
  def new
    @age_filter = Filter.where("ftype = ?", "AGE")
    @gender_filter = Filter.where("ftype = ?", "GENDER")
    @race_filter = Filter.where("ftype = ?", "RACE")
    @smoking_filter = Filter.where("ftype = ?", "SMOKING STATUS")
    @immu_filter = Filter.where("ftype = ?", "IMMUNOCOMPROMISED")
    @renal_filter = Filter.where("ftype = ?", "RENAL IMPAIRMENT")
    @preg_filter = Filter.where("ftype = ?", "PREGNANCY")
    @tags = Tag.all
    @question = Question.new
    if (params[:question] != nil) 
      flash[:question] = params[:question]
      flash[:age] = params[:age]
      flash[:gender] = params[:gender]
      flash[:race] = params[:race]
      flash[:smoking] = params[:smoking]
      flash[:immu] = params[:immu]
      flash[:renal] = params[:renal]
      flash[:preg] = params[:preg]

      q = Question.new
      q.description = flash[:question]
      q.age = flash[:age]
      q.gender = flash[:gender]
      q.race = flash[:race]
      q.smoking_status = flash[:smoking]
      q.immunocompromised = flash[:immu]
      q.renal_impairment = flash[:renal]
      q.pregnancy = flash[:preg]
      q.user = current_user
      q.save

      redirect_to "/outgoing"

    else
    end
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:description, :age, :gender, :race, :smoking_status, :immunocompromised, :renal_impairment, :pregnancy, :tag)
    end
end
