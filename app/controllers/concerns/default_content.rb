module DefaultContent
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

  def set_page_defaults
  	@page_title = "My Portolio Website"
  	@seo_keywords = "Alwan Mortaa"
  end
end