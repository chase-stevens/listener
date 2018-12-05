class CreateCheckins < ActiveRecord::Migration[5.2]
  def change
    create_table :checkins do |t|
      t.text :note
      t.references :listener, foreign_key: true

      t.timestamps
    end
  end
end
