class AddApprovalToAnnuals < ActiveRecord::Migration
  def change
    add_column :annuals, :approval, :boolean, :default => false
  end
end
