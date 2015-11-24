 require_relative "../lib/post"
 require "spec_helper"

  describe "Post of the Blog" do
  let(:post) {Post.new("Primer", "12/12/2015", "Hoy puede ser un gran dia")}

  it "return title of a post" do
  	expect(post.title).to eq("Primer")
  end

  end 