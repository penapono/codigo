class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.references :make, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
