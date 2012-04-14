class JournalEntriesController < ApplicationController
  # GET /journal_entries
  # GET /journal_entries.json
  def index
    @journal_entries = JournalEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @journal_entries }
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

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @journal_entry }
    end
  end

  # GET /journal_entries/1/edit
  def edit
    @journal_entry = JournalEntry.find(params[:id])
  end

  # POST /journal_entries
  # POST /journal_entries.json
  def create
    @journal_entry = JournalEntry.new(params[:journal_entry])

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
