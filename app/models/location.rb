class Location < ActiveRecord::Base
  has_and_belongs_to_many :materials
  accepts_nested_attributes_for :materials
end
