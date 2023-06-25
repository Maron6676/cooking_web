class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|

      t.integer:recipe_id
      t.string:name
      t.integer:quantity

      t.timestamps
    end
  end
end
