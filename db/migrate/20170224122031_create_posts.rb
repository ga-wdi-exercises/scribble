class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.serial :id
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
