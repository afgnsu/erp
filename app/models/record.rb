class Record < ActiveRecord::Base
  enum status: [:revenue, :expense, :pending_revenue, :pending_expense,
  	:capital, :draw, :loan_taken]
  belongs_to :book
  SearchableColumns = [:description]
  
  include Searchable
end
