# frozen_string_literal: true

class AddUserIdForeignKeyToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :user_id, :integer
  end
end
