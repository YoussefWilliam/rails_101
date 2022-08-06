class Article < ActiveRecord::Base
    # Add validation where title is a mandatory field and should not be nil
    validates :title, presence: true, length: { minimum: 5 ,  maximum: 50 }
    validates :description, presence:true, length: { minimum: 10, maximum: 500 }
end
