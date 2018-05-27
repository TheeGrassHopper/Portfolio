class Portfolio < ApplicationRecord
		has_many :technologies
		accepts_nested_attributes_for :technologies, reject_if: :all_blank, allow_destroy: true

		include Placeholder
	  validates_presence_of :title, :body, :main_image, :thumb_image

	  scope :for_subtitile, -> (subtitle) { where('subtitle = ?', subtitle) }
	  scope :by_position, -> { order('position ASC') }
	  # scope :for_subtitile, -> (subtitle) { where(subtitle: subtitle) }
	  # def self.react_on_rails
	  # 	where(subtitle: "React On Rails")
	  # end

	  scope :for_ruby_on_rails, -> { where(subtitle: "Ruby On Rails") }

	  after_initialize :set_defaults

	  def set_defaults
	  	self.main_image ||= Placeholder.image_generator(600,400)
	  	self.thumb_image ||= Placeholder.image_generator(350,200)
	  end
end
