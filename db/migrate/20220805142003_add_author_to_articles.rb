class AddAuthorToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :author, :string
    add_column :articles, :created_at, :datatime
    add_column :articles, :updated_at, :datatime
  end
end
