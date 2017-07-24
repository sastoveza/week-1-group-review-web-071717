require 'pry'

class User

attr_accessor :photo, :comment


	def initialize(name)
		@name = name
	end

	def photos 
		Photo.all.select do |photo|
			photo.user == self
		end
	end
end

	

class Photo

attr_accessor :user

@@all = []

	def initialize
		@comments = []
		@all << self
	end

	def self.all
		@@all
	end

	def comments
		@comments
	end


	def make_comment(comment)
		@comments << Comment.new(comment)
	end


end


class Comment

attr_accessor :message

@@all = []

	def initialize(message)
		@text = text
		@@all << self
	end
end



# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
