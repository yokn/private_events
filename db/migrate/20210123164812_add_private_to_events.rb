# frozen_string_literal: true

class AddPrivateToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :private, :integer, default: 0
  end
end
