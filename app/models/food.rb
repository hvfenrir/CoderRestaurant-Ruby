class Food < ActiveRecord::Base
	def img_url_or_auto
		if img_url.present?
			img_url
		else
			"http://loremflickr.com/320/240/#{name}"
		end
		# image_url.presence || "http://loremflickr.com/320/240/#{name}"
	end
	def self.filter_by_section(section,order)
		if order
			where(section: section).order(order)
		else
			where(section: section)
		end
	end
end
