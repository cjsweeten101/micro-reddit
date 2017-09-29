class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    	t.belongs_to :user, foriegn_key: true, index: true
      t.string :link
      t.string :title
      t.timestamps
    end
  end
end
