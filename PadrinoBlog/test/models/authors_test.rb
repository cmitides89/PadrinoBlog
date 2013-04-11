require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

class AuthorsTest < Test::Unit::TestCase
  context "Authors Model" do
    should 'construct new instance' do
      @authors = Authors.new
      assert_not_nil @authors
    end
  end
end
