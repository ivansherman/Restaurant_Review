class AddRecommendedToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :recommended, :boolean 
  end
end
