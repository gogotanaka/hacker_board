class AddPointToNews < ActiveRecord::Migration
  def change
    add_column :news, :point, :integer, default: 0
  end
end
