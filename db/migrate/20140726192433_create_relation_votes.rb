class CreateRelationVotes < ActiveRecord::Migration
  def change
    create_table :relation_votes do |t|
      t.references :user, index: true
      t.references :news, index: true

      t.timestamps
    end

    add_index :relation_votes, [:user_id, :news_id], unique: true
  end
end
