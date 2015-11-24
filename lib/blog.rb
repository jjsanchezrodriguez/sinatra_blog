require_relative "post.rb"
require_relative "blog.rb"
require "pry"
	
class Blog
	attr_accessor :blogs
	def initialize(blogs = [])
		@blogs = blogs
		@blogs = [Post.new("Primer Post",  "Hoy puede ser un gran dia"),
				  Post.new("Segundo Post", "A las aladas almas de las rosas del almendro de nata te requiero"),
				  Post.new("Tercer Post",  "Te podria contar que esta quemandose mi ultimo leño en el hogar"),
				  Post.new("Cuarto Post",  "Lo primero que hice fue marcharme bien lejos"),
				  Post.new("Quito Post",   "Tranquilo tronco perdona y un trago para celebralo")]
	end

	def posts(title, text)
		@blogs << Post.new(title, text)
	end
	
	
end