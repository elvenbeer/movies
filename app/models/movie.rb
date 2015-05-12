class Movie < ActiveRecord::Base
	has_many :reviews
	validates :year, presence: true, inclusion: {in: 1900...Date.today.year+1, message: "Incorrect"}
	validates :title, presence: true
end
