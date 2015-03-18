module ApplicationHelper

	# mods to return a title on a per-page basis

	def title
		base_title = "Jorge Jimenez Web Site"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
	end
	
end
