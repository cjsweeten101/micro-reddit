class Post < ApplicationRecord
	validates :title, presence: true, length: { maximum: 140 }
	LINK_REGEX = /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
	validates :link, presence: true, format: { with: LINK_REGEX, multiline: true }
	validates :user_id, presence: true
end
