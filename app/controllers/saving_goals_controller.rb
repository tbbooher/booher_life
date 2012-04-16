class SavingGoalsController < ApplicationController
  # GET /saving_goals
  # GET /saving_goals.json
  def index
    @saving_goals = SavingGoal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @saving_goals }
    end
  end

  # GET /saving_goals/1
  # GET /saving_goals/1.json
  def show
    @saving_goal = SavingGoal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @saving_goal }
    end
  end

  # GET /saving_goals/new
  # GET /saving_goals/new.json
  def new
    @saving_goal = SavingGoal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @saving_goal }
    end
  end

  # GET /saving_goals/1/edit
  def edit
    @saving_goal = SavingGoal.find(params[:id])
  end

  # POST /saving_goals
  # POST /saving_goals.json
  def create
    @saving_goal = SavingGoal.new(params[:saving_goal])

    respond_to do |format|
      if @saving_goal.save
        format.html { redirect_to @saving_goal, notice: 'Saving goal was successfully created.' }
        format.json { render json: @saving_goal, status: :created, location: @saving_goal }
      else
        format.html { render action: "new" }
        format.json { render json: @saving_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /saving_goals/1
  # PUT /saving_goals/1.json
  def update
    @saving_goal = SavingGoal.find(params[:id])

    respond_to do |format|
      if @saving_goal.update_attributes(params[:saving_goal])
        format.html { redirect_to @saving_goal, notice: 'Saving goal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @saving_goal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saving_goals/1
  # DELETE /saving_goals/1.json
  def destroy
    @saving_goal = SavingGoal.find(params[:id])
    @saving_goal.destroy

    respond_to do |format|
      format.html { redirect_to saving_goals_url }
      format.json { head :no_content }
    end
  end
end
