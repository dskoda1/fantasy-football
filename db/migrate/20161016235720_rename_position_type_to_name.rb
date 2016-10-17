class RenamePositionTypeToName < ActiveRecord::Migration[5.0]
  def change
      rename_column :positions, :type, :name
  end
end
