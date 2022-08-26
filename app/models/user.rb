class User < ApplicationRecord
    validates   :username, presence: true,
                length: { minimum: 3, maximum: 50 },
                uniqueness: { case_sensitive: false }
    validates   :email, presence: true,
                length: { maximum: 45 },
                uniqueness: { case_sensitive: false }

end
