class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :news, index: true
      t.references :comment, index: true
      t.string :contents

      t.timestamps
    end
  end
end
