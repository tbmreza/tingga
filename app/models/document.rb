class Document < ApplicationRecord
  validates :title, presence: true
  validates :summary, presence: true, length: { minimum: 2 }
end
