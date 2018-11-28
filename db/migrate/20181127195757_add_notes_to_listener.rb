class AddNotesToListener < ActiveRecord::Migration[5.2]
  def change
    add_column :listeners, :notes, :text
  end
end
