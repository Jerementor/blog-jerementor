class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :content, :presence => true, :length => { :minimum => 20 }
  validates :title, :presence => true
  validates :name, :presence => true

end
