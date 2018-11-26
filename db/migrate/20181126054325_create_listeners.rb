class CreateListeners < ActiveRecord::Migration[5.2]
  def change
    create_table :listeners do |t|
      t.string :title
      t.string :interval

      t.timestamps
    end
  end
end
