class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :title
      t.text :content
      t.references :user, foreign_key: true

      t.timestamps 
    end
  end
end
