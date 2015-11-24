 require_relative "../lib/post"
 require "spec_helper"

  describe "Post of the Blog" do
  let(:post) {Post.new("Primer Post", "Hoy puede ser un gran dia")}

  it "return title of a post" do
  	expect(post.title).to eq("Primer Post") 
  end

  end 