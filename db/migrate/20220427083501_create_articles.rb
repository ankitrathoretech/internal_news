class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.belongs_to :admin_user
      t.datetime :published_at
      t.text :body
      t.timestamps
    end
  end
end
