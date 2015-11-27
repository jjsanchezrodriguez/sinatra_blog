require_relative "blog.rb"
require_relative "post.rb"
class Post
	
	attr_accessor :title, :text, :author, :category, :date
	  # @@current_id_post = 1
	def initialize(title, text, author, category)
		@title = title
		@text = text
		@author = author
		@category = category
		@date = Time.now
		# @id_post = @@current_id
        # @current_id_post += 1
	end
	
end

 