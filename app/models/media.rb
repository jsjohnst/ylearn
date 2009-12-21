class Media < ActiveRecord::Base
  belongs_to :items
  has_many :checkouts
  has_many :downloads
end
