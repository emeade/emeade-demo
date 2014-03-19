class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.string :url
      t.string :author
      t.datetime :published_at
      t.string :guid

      t.timestamps
    end
  end
end
