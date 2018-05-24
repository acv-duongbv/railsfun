class Product < ApplicationRecord
	extend Enumerize
	enumerize :level, in: {easy: 1, medium: 2, hard: 3}
	# validate :title_is_shorter_than_description
	validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
	# before_save :strip_html_from_description
	# before_save :lower_case_title
	belongs_to :category, optional: true
	validates :title, :description, presence: true

	scope :pushlished, -> {where(pushlished: true)}
	scope :priced_more_than, -> (price){where('price > ?', price)}

	# def title_is_shorter_than_description
	# 	return if title.blank? || description.blank?
	# 	return if description.length >= title.length
	# 	errors.add(:description, 'can\'t be shorter than title')
	# end

	# def strip_html_from_description
	# 	self.description = ActionView::Base.full_sanitizer(self.description)
	# end
end
