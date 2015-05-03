# == Schema Information
#
# Table name: filters
#
#  id         :integer          not null, primary key
#  ftype      :string
#  subtype    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Filter < ActiveRecord::Base
end
