class Article < ActiveRecord::Base
	has_one :category

	vaildates_presence_of :title, :content

	scope :active, where('active = ?', true)
  	scope :alphabetical, order('title')
end
