require_relative "post.rb"
require_relative "blog.rb"
require "pry"
	
class Blog
	attr_accessor :posts
	def initialize(posts = [])
		@posts = posts
		@posts = [Post.new("Primer Post",  "Hoy puede ser un gran dia" ,"pepe", "submarinismo"),
				  Post.new("Segundo Post", "A las aladas almas de las rosas del almendro de nata te requiero","pepe", "submarinismo"),
				  Post.new("Tercer Post",  "Te podria contar que esta quemandose mi ultimo leño en el hogar", "pepe", "submarinismo"),
				  Post.new("Cuarto Post",  "Lo primero que hice fue marcharme bien lejos","pepe", "submarinismo"),
				  Post.new("Quito Post",   "Tranquilo tronco perdona y un trago para celebralo" ,"pepe", "submarinismo")]
	end

	def add_post(title, text, author, category)
		@posts << Post.new(title, text, author, category)
	end

	def sort_by_date
 		@posts = @posts.sort { | post1, post2 | post2.date <=> post1.date }	
 	end
	
	
end