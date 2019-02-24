module MoviesHelper
	def format_total_gross(total_gross)
		if total_gross < 1
			"<strong> Null! </strong>" .html_safe
		else	
			number_to_currency(total_gross)
		end		
	end

	def image_for(movie)
		if movie.image_file_name.blank?
			image_tag('placeholder-600x400.png')
		else
			image_tag(movie.image_file_name)
		end
	end
end
