require 'pry'

class Post
    attr_accessor :author, :title

    @@all = []

    def initialize(title)
        @author = author
        @title = title
        @@all << self
    end
    
    def self.all
        @@all
    end

    def author_name
    self.author ? author.name : nil
    #     if self.author
    #         author.name 
    #     else
    #         nil
    #     end
    end

end
