class ChangeUserToUser1 < ActiveRecord::Migration[6.1]
  def change
    rename_table :session_user, :user
  end
end
