class RenameCarToCarIdInReviews < ActiveRecord::Migration[7.1]
  def change
    rename_column :reviews, :car, :car_id
  end
end
