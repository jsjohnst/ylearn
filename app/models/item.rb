class Item < ActiveRecord::Base
  has_many :medias
  accepts_nested_attributes_for :medias, :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
