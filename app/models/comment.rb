class Comment < ApplicationRecord
    belongs_to :facebook
    belongs_to :user
  end
  