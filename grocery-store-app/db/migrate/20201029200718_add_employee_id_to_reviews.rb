class AddEmployeeIdToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :employee, foreign_key: true
  end
end
