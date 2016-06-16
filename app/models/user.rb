class User < ActiveRecord::Base
    has_many :posts
    has_secure_password
    validates(:username, presence: true)
    validates(:email, presence: true)
    validates(:password, length:{minimum:6}, presence: true)
end
