class StressorsController < ApplicationController
  # GET /stressors
  # GET /stressors.json
  def index
    @stressors = Stressor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stressors }
    end
  end

  # GET /stressors/1
  # GET /stressors/1.json
  def show
    @stressor = Stressor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stressor }
    end
  end

  # GET /stressors/new
  # GET /stressors/new.json
  def new
    @stressor = Stressor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stressor }
    end
  end

  # GET /stressors/1/edit
  def edit
    @stressor = Stressor.find(params[:id])
  end

  # POST /stressors
  # POST /stressors.json
  def create
    @stressor = Stressor.new(params[:stressor])

    respond_to do |format|
      if @stressor.save
        format.html { redirect_to @stressor, notice: 'Stressor was successfully created.' }
        format.json { render json: @stressor, status: :created, location: @stressor }
      else
        format.html { render action: "new" }
        format.json { render json: @stressor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stressors/1
  # PUT /stressors/1.json
  def update
    @stressor = Stressor.find(params[:id])

    respond_to do |format|
      if @stressor.update_attributes(params[:stressor])
        format.html { redirect_to @stressor, notice: 'Stressor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stressor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stressors/1
  # DELETE /stressors/1.json
  def destroy
    @stressor = Stressor.find(params[:id])
    @stressor.destroy

    respond_to do |format|
      format.html { redirect_to stressors_url }
      format.json { head :no_content }
    end
  end
end
