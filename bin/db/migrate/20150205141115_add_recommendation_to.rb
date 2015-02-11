class AddRecommendationTo < ActiveRecord::Migration
  def change
  	add_column :reviews, :recommendation, :boolean
  end
end
