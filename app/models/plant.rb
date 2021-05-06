# class Plant < ApplicationRecord
#   belongs_to :garden, dependent: :destroy
#   validates_presence_of :name
#   validates :image_url, presence: true
# end


#solution below

class Plant < ApplicationRecord
  belongs_to :garden
  validates_associated :garden
  validates :name, presence: true
  validates :image_url, presence: true
  # TODO, how does a plant relates to a tag?

end

