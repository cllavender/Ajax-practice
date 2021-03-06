class Post < ActiveRecord::Base
    belongs_to :user
    has_many :likes, :dependent => :destroy
    has_many :liked_users, :through => :likes, :source => :user
    has_many :scores, :class_name => "PostScore"
    belongs_to :category
    validates_presence_of :content
    
    def find_like(user)
        self.likes.where(:user_id => user.id ).first
    end
    
    def find_score(user)
        user && self.scores.where( :user_id => user.id ).first
    end
    
    def average_score
        self.scores.average(:score)
    end
    
end
