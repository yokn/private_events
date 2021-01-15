# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  scope :past, -> { where('date < ? ', Time.current) }
  scope :upcoming, -> { where('date > ? ', Time.current) }
end
