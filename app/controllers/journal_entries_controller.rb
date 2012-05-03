class JournalEntriesController < ApplicationController
  before_filter :authenticate_user!

  def analysis

  end

  def journal_entry_data
    @data = Array.new
    [:purity, :fitness, :devotional, :chrissy, :relational, :discipline, :facepicking, :stress].each do |cat|
      @data.push({name: cat.to_s, data: JournalEntry.all.map(&cat)})
    end

    respond_to do |format|
      format.html # index.html.erb
                  # [{"name":"temperature","type":"areaspline","data":[[1327213807000,0],[1327214100000,0],[1327214403000,0],[1327214700000,0],[1327215000000,24],[1327215301000,59.8],[1327215603000,95.4],[1327215901000,120.8],[1327216202000,131.6]]}]
      format.json { render json: @data.to_json }
    end
  end

  # GET /journal_entries
  # GET /journal_entries.json
  def index
    @journal_entries = JournalEntry.desc(:entry_date).page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      # [{"name":"temperature","type":"areaspline","data":[[1327213807000,0],[1327214100000,0],[1327214403000,0],[1327214700000,0],[1327215000000,24],[1327215301000,59.8],[1327215603000,95.4],[1327215901000,120.8],[1327216202000,131.6]]}]
      format.json { render json: JournalEntry.all.as_json(only: [:purity, :fitness, :devotional, :chrissy, :relational, :discipline, :facepicking, :stress]) }
    end
  end

  # GET /journal_entries/1
  # GET /journal_entries/1.json
  def show
    @journal_entry = JournalEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @journal_entry }
    end
  end

  # GET /journal_entries/new
  # GET /journal_entries/new.json
  def new
    @journal_entry = JournalEntry.new
    @last_entry = JournalEntry.last
    @journal_entry.to_do = @last_entry.to_do if @last_entry

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @journal_entry }
    end
  end

  # GET /journal_entries/1/edit
  def edit
    @journal_entry = JournalEntry.find(params[:id])
    @last_entry = JournalEntry.last
  end

  # POST /journal_entries
  # POST /journal_entries.json
  def create
    @journal_entry = JournalEntry.new(params[:journal_entry])
    @last_entry = JournalEntry.last

    respond_to do |format|
      if @journal_entry.save
        format.html { redirect_to @journal_entry, notice: 'Journal entry was successfully created.' }
        format.json { render json: @journal_entry, status: :created, location: @journal_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @journal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /journal_entries/1
  # PUT /journal_entries/1.json
  def update
    @journal_entry = JournalEntry.find(params[:id])

    respond_to do |format|
      if @journal_entry.update_attributes(params[:journal_entry])
        format.html { redirect_to @journal_entry, notice: 'Journal entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @journal_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_entries/1
  # DELETE /journal_entries/1.json
  def destroy
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.destroy

    respond_to do |format|
      format.html { redirect_to journal_entries_url }
      format.json { head :no_content }
    end
  end
end
