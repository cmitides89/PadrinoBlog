require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class CommentTest < Test::Unit::TestCase
  context "Comment Model" do
  	setup do
  		@post = Post.new(:title => "first", :body => "asddfsgagadfghdfahdfhsdh")
  		@tag = Tag.new(:name => "thistag")

  		@post_tag =PostTag.new(:post => @post, :tag => @tag)
  		@post.post_tags << @post_tag
  		@post.save!
  	end

    should "have many post_tags" do
    	assert @post.respond_to?(:post_tags) #does it have many post_tags?
    	assert_equal 1, @post.post_tags.length
    	assert @post.post_tags.is_a?(Array)
    	assert @post.post_tags.first.is_a?(PostTag)
    	assert @post.post_tags.first.tag.is_a?(Tag)
    	assert_equal @post, @post.post_tags.first.post
    end
  end
end
