class Media < ActiveRecord::Base
  belongs_to :item
  has_many :checkouts
  has_many :downloads
end
