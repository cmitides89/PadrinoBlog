require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class TagTest < Test::Unit::TestCase
  context "Tag Model" do
  	setup do
	  	@tag = Tag.new(:name => "cool")
	  	@post = Post.new(:title => "first post", :body => "agdsgsdgadhadshsdh.")


	    @post_tag = PostTag.new(:post => @post, :tag => @tag)
	    @post.post_tag << @post_tag
	    @post.save!
    end
  end
end