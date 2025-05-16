class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :rating
      t.string :car
      t.string :references

      t.timestamps
    end
  end
end
