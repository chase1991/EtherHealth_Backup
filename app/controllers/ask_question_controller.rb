class AskQuestionController < ApplicationController

	def ask
		@age_filter = Filter.where("ftype = ?", "AGE")
		@gender_filter = Filter.where("ftype = ?", "GENDER")
		@race_filter = Filter.where("ftype = ?", "RACE")
		@smoking_filter = Filter.where("ftype = ?", "SMOKING STATUS")
		@immu_filter = Filter.where("ftype = ?", "IMMUNOCOMPROMISED")
		@renal_filter = Filter.where("ftype = ?", "RENAL IMPAIRMENT")
		@preg_filter = Filter.where("ftype = ?", "PREGNANCY")
		@tags = Tag.all
	end

	def create
	end
	
end
