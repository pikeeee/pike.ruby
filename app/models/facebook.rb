class Facebook < ApplicationRecord
	belongs_to :user
	has_many :comment, -> {order(:created_at => :desc)}
  
	def is_belongs_to? user
	  Post.find_by(user_id: user.id, id: id)
	end
	
	
end
