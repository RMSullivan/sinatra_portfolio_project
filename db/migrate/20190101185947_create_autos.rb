class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :make
      t.string :model
      t.string :year
      t.string :mpg
      t.string :tank
      t.string :gas
      t.integer :user_id
    end
  end
end
