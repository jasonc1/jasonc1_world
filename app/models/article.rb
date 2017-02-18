class Article < ActiveRecord::Base
	has_one :category

	vaildates_presence_of :title, :context

	scope :active, where('active = ?', true)
  	scope :alphabetical, order('name')
end
