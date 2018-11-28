class AddUuidToListener < ActiveRecord::Migration[5.2]
  def change
    add_column :listeners, :uuid, :string
  end
end
