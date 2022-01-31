class RenameCartIdToUserIdInLineItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :line_items, :cart_id, :user_id
  end
end
