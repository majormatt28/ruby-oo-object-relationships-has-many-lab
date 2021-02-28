class Author
    attr_accessor :name
    @@post_count = 0

    def initialize(name)
        @name = name
        @posts = []
        
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        self.posts << post
        post.author = self

    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        self.posts << post
        post.author = self
    end

    def self.post_count
        @@post_count += 3
    end


end