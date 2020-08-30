class Author
    attr_accessor :name, :title

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(new_post)
        publisher = Post.new(new_post)
        add_post(publisher)
    end

    def self.post_count
        Post.all.count 
    end

end
