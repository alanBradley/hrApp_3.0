class AddHolamountleftToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :holleft, :integer, :default => 0
  end
end
