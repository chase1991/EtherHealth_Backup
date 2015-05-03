class Question < ActiveRecord::Base

	validates :description, presence: true, length: {maximum: 250}

	has_many :answers
	has_many :filters
	belongs_to :user
	has_many :tags

end
