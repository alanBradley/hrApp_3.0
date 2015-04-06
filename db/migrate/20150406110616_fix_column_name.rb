class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :annuals, :type, :annualType
  end
end
