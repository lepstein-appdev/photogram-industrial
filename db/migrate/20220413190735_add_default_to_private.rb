class AddDefaultToPrivate < ActiveRecord::Migration[6.1]
  def change
    change_column_default(
  :users,
  :private,
  true
)
  end

  def change
    change_column_default(
  :follow_requests,
  :status,
  "Pending"
)
  end
end
