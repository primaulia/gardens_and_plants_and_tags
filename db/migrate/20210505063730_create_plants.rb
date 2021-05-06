# class CreatePlants < ActiveRecord::Migration[6.1]
#   def change
#     create_table :plants do |t|
#       t.string :name
#       t.text :image_url
#       t.reference :garden, null: true, :with_foreign_key

#       t.timestamped
#     end
#   end
# end


# solution

class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :image_url
      t.references :garden, null: false, foreign_key: true
      t.timestamps
    end
  end
end
