class Friend < ApplicationRecord
  has_many :telephones, dependent: :destroy

  validates :name, presence: true, length: { maximum: 10 }
end
