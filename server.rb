require 'sinatra'
require 'pry'
require "sinatra/reloader" if development?

enable(:sesions)

require_relative('./lib/post.rb')
require_relative('./lib/blog.rb')
blog  = Blog.new()

get "/" do
	@my_blog = blog
	erb :index
end

post "/sort" do
	@my_blog = blog
	@my_blog.sort_by_date
	redirect("/") 

end

post "/form_add" do
	@my_blog = blog
	erb :add 
end

post "/add" do
	@my_blog = blog
	@my_blog.add_post(params[:post_title],params[:post_text])
	# binding.pry
	redirect("/") 
end

post "/back" do
	redirect("/") 

end