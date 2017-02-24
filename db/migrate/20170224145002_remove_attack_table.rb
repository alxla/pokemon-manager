class RemoveAttackTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :attacks
  end
end
