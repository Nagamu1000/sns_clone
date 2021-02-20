class User < ApplicationRecord
    validates :email,{uniqueness: true}
    validates :password,{presence: true}

    acts_as_followable
    acts_as_follower
    def posts
        return Post.where(user_id: self.id)
    end
end
