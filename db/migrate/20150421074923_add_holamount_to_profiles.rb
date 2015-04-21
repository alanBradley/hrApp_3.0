class AddHolamountToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :holbasic, :integer, :default => 25
  end
end
