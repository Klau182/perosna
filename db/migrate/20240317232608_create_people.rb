class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthdate
      t.integer :gender, default: 0
      t.string :country

      t.timestamps
    end
  end
end
