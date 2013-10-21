require "squeel"

class Task < ActiveRecord::Base
  belongs_to :user

  scope :incomplete, -> { where{complete == false} }
  scope :complete,   -> { where{complete == true} }
  scope :ascending, -> { order{created_at.asc} }

  validates :content, presence: true
end
