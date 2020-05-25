class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :article
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end
