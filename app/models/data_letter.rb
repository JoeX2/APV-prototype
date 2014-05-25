class DataLetter < ActiveRecord::Base
  belongs_to :material

  validates :material_id, presence: true
end
