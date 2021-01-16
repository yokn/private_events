# frozen_string_literal: true

class Event < ApplicationRecord
  validate :in_the_future

  def in_the_future
    errors.add(:date, "Can't create a new event in the past!") unless date >= Time.current
  end

  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  scope :past, -> { where('date < ? ', Time.current) }
  scope :upcoming, -> { where('date > ? ', Time.current) }
end
