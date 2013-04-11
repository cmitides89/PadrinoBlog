class Post < ActiveRecord::Base
	belongs_to :author
	has_many :post_tags
	has_many :tags, :through => :post_tags 
	#the has many is the method and the tags and the through are the argument
	#the through => post is a hash 
	has_many :comments
end