class CreateClimbs < ActiveRecord::Migration[5.2]
  def change
    create_table :climbs do |t|
      t.string :route_name, null: false
      t.string :route_grade, null: false
      t.integer :number_of_tries
      t.boolean :did_send
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
