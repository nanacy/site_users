class User < ApplicationRecord
	validates :username, uniqueness: true
	validates :username, format: { without: /\s/ }
end