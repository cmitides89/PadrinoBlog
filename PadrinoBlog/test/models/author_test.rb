require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class AuthorTest < Test::Unit::TestCase
	context "Author Model" do
		setup do 
			@author = Author.new(:name => "sandy")
			@author.posts << Post.new(:title => "first post", :body => "sgsgsdgsdgsdgsdgsg")
			@author.posts << Post.new(:title => "second post", :body => "sgsgsdgsdgsdgsdgsg")
			@author.posts << Post.new(:title => "third post", :body => "sgsgsdgsdgsdgsdgsg")
			@author.save
			@author.reload
		end

		should "should have many posts" do
    	assert @author.respond_to?(:posts) # is author connected to many posts?
    	assert_not_nil @author.posts #does the author have posts?
    	assert @author.posts.is_a?(Array)#are the products of the author an array?
    	assert_equal 3, @author.posts.length #are there three items in this array?
    	assert_equal @author.products.first.is_a?(Post)
    	assert_equal "first post", @author.posts.first.title #is this the first item in the array and is this its title?

    	first_post = @author.posts.first
    	assert_not_nil first_post.author
    	# assert_equal @author, first_post.author what does this do?
		end
	end
end
