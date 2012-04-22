class NextStepsController < ApplicationController
  # GET /next_steps
  # GET /next_steps.json
  def index
    @next_steps = NextStep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @next_steps }
    end
  end

  # GET /next_steps/1
  # GET /next_steps/1.json
  def show
    @next_step = NextStep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @next_step }
    end
  end

  # GET /next_steps/new
  # GET /next_steps/new.json
  def new
    @next_step = NextStep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @next_step }
    end
  end

  # GET /next_steps/1/edit
  def edit
    @next_step = NextStep.find(params[:id])
  end

  # POST /next_steps
  # POST /next_steps.json
  def create
    @next_step = NextStep.new(params[:next_step])

    respond_to do |format|
      if @next_step.save
        format.html { redirect_to @next_step, notice: 'Next step was successfully created.' }
        format.json { render json: @next_step, status: :created, location: @next_step }
      else
        format.html { render action: "new" }
        format.json { render json: @next_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /next_steps/1
  # PUT /next_steps/1.json
  def update
    @next_step = NextStep.find(params[:id])

    respond_to do |format|
      if @next_step.update_attributes(params[:next_step])
        format.html { redirect_to @next_step, notice: 'Next step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @next_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /next_steps/1
  # DELETE /next_steps/1.json
  def destroy
    @next_step = NextStep.find(params[:id])
    @next_step.destroy

    respond_to do |format|
      format.html { redirect_to next_steps_url }
      format.json { head :no_content }
    end
  end
end
