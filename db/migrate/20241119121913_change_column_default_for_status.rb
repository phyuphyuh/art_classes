class ChangeColumnDefaultForStatus < ActiveRecord::Migration[7.1]
  def change
    change_column_default :reservations, :status, from: nil, to: "pending"
  end
end
