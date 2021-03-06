class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :memo, foreign_key: true

      t.timestamps 
    end
  end
end
