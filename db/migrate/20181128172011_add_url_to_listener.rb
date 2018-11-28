class AddUrlToListener < ActiveRecord::Migration[5.2]
  def change
    add_column :listeners, :url, :string
  end
end
