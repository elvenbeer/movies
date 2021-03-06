class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :body
      t.string :title
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
