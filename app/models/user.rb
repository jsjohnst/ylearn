class User < ActiveRecord::Base
  has_many :checkouts
  has_many :downloads
end
