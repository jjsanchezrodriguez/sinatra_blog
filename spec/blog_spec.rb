 require_relative "../lib/blog"
 require "spec_helper"
 require "pry"

  describe "list of post in blog" do
  let(:my_blog) {Blog.new()}

	  it "return title first post" do
	  	expect(my_blog.blogs.first.title).to eq("Primer Post")
	  end

	  it "return text last post" do
	  	expect(my_blog.blogs.last.text).to eq("Tranquilo tronco perdona y un trago para celebralo")
	  end

	  it "create add a new post" do
	  	my_blog.posts("Sexto Post", "El patio de mi casa es particular cuando llueve no se moja como los demas")
	  	expect(my_blog.blogs.last.text).to eq("El patio de mi casa es particular cuando llueve no se moja como los demas")

	  end



  end 