class RenameUuidToUid < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :uuid, :uid
  end
end
