class Downloads < ActiveRecord::Base
  belongs_to :users
  belongs_to :medias
end
