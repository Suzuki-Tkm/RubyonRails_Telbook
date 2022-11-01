class Friend < ApplicationRecord
  has_many :telephones, dependent: :destroy
end
