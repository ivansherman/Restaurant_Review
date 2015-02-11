class AddRecommendToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :recommend, :boolean
  end
end

