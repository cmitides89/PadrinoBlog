require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class PostTest < Test::Unit::TestCase
  context "Post Model" do
    
    setup do
    	@post = Post.new(:title => "first post" :body => "askfgajksfgsdgsdg")
    	@post = Post.new(:title => "second post" :body => "asfasgsdgsdgsdg")
    	@post = Post.new(:title => "third post" :body => "asgsdgsgsdgsdgsd")
    end


    end
  end
end
