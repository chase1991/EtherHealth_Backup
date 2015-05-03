# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :string
#  password        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ActiveRecord::Base
	validates :username, presence: true, length: {maximum: 50}, 
				uniqueness: {case_sensitive: false}
	validates :email, presence: true, length: {maximum: 100},
				uniqueness: {case_sensitive: false}
	validates :password, presence: true, length: {maximum: 200}
	has_secure_password

	has_many :questions
	has_many :answers
	has_many :tags
	has_many :votes
end
