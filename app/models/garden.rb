# class Garden < ApplicationRecord
#   has_many :plants, dependent: :destroy, if: ->() { self.valid? }
# end


# solution

class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy
end
