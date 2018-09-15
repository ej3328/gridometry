class Site < ApplicationRecord
  validates_format_of :firstName, :with => /\A[a-zA-Z]+\z/i,
    :message => "can only have letters"
  validates_format_of :lastName, :with => /\A[a-zA-Z]+\z/i,
    :message => "can only have letters"

  validates :firstName, presence: true, length: { minimum: 3, message: "must be at least 3 characters"}
  validates :lastName, presence: true, length: { minimum: 3, message: "must be at least 3 characters"}
  validates :phone, numericality: { only_integer: true }, allow_nil: true, length: {in: 7..10}
  validates :message, length: { maximum: 25}, allow_nil: true

  
end
