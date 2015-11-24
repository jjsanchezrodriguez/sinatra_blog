require_relative "blog.rb"
require_relative "post.rb"
class Post
	
	attr_accessor :title, :text, :date
	  # @@current_id_post = 1
	def initialize(title, text)
		@title = title
		@text = text
		@date = Time.now
		# @id_post = @@current_id
        # @current_id_post += 1
	end
	
end

 