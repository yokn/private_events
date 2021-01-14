# frozen_string_literal: true

class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :user
end
