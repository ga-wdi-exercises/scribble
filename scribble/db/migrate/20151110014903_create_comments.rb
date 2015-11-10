class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.string :username
      t.datetime :created_at
      t.datetime :updated_at
      t.references :post, index: true, foreign_key: true
    end
  end
end
