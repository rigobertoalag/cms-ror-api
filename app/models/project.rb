class Project < ApplicationRecord
  #belongs_to :user
  validates :title, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :config, presence: true
end
