# http://booherlife.herokuapp.com/journal_entries.jso
# purpose of the code is to pull in old database entries
require 'csv'

namespace :data do
  desc "Pull in old journal entries"
  task :pull_in_entries => :environment do
    csv_text = File.read("/Users/Tim/Sites/booher_life/entries.csv")
    csv = CSV.parse(csv_text, :headers => true)
    csv.each_with_index do |row, index|
      row = row.to_hash # .with_indifferent_access
      puts index
      # "id","posting_date","purity","description","fitness","devotional","chrissy","relational"
      # ,"discipline","created_at","updated_at"
      j = JournalEntry.new
      j.entry_date = Date.parse(row[:posting_date.to_s])
      j.description = row[:description.to_s]
      j.purity     = row[:purity.to_s] # this should be changed to meet the new format
      j.fitness    = row[:fitness.to_s]
      j.devotional = row[:devotional.to_s]
      j.chrissy    = row[:chrissy.to_s]
      j.relational = row[:relational.to_s]
      j.discipline = row[:discipline.to_s]
      j.created_at = row[:created_at.to_s]
      j.updated_at = row[:updated_at.to_s]
      unless j.save!
        raise "error with #{j.entry_date}!"
      end
      #j.stress, :type => Integer
      #j.sick, type: Boolean
      #j.health_statement, :type => String
    end
  end
end