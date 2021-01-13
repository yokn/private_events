# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :name
      t.date :date
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
