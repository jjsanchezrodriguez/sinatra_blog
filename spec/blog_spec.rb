 require_relative "../lib/blog"
 require "spec_helper"
 require "pry"

  describe "list of post in blog" do
  let(:my_blog) {Blog.new()}

	  it "return title first post" do
	  	expect(my_blog.posts.first.title).to eq("Primer Post")
	  end

	  it "return text last post" do
	  	expect(my_blog.posts.last.text).to eq("Tranquilo tronco perdona y un trago para celebralo")
	  end

	  it "create add a new post" do
	  	my_blog.add_post("Sexto Post", "El patio de mi casa es particular cuando llueve no se moja como los demas")
	  	expect(my_blog.posts.last.text).to eq("El patio de mi casa es particular cuando llueve no se moja como los demas")
	  end

	   it "order posts by date" do 
	  	aux = my_blog.posts
	  	my_blog.sort_by_date
	  	expect(my_blog.posts).to eq(aux.reverse)	
	  end




  end 