class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.references :user
      t.string :title
      t.string :url
      t.string :contents


      t.timestamps
    end
  end
end
