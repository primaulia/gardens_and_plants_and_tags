# class CreateGardens < ActiveRecord::Migration[6.1]
#   def change
#     create_table :gardens do |f|
#       f.text :name, default: 'Garden Gardenish'
#       f.text :image_url

#       f.timestamps
#     end
#   end
# end

# solution

class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :name, default: 'Garden Gardenish'
      t.string :image_url
      t.timestamps
    end
  end
end
