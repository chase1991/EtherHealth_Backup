class Answer < ActiveRecord::Base

	validates :description, presence: true

	has_many :votes
	belongs_to :user
	belongs_to :question

end
