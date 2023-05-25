class CreateHowarts < ActiveRecord::Migration[7.0]
  def change
    create_table :howarts do |t|
      t.string :name
      t.string :location
      t.string :house

      t.timestamps
    end
  end
end
