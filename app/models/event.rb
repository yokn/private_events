# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :location, presence: true
  validate :in_the_future

  def in_the_future
    if date
      errors.add(:date, "Can't create a new event in the past!") unless date >= Time.current
    end
  end

  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  scope :past, -> { where('date < ? ', Time.current) }
  scope :upcoming, -> { where('date > ? ', Time.current) }
end
