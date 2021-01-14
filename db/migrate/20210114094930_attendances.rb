# frozen_string_literal: true

class Attendances < ActiveRecord::Migration[6.0]
  def change
    change_table :attendances do |t|
      t.remove :user_id, :event_id
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
    end
  end
end
