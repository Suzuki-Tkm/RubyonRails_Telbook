class Telephone < ApplicationRecord
  belongs_to :name, class_name: "Friend", foreign_key: "friend_id"
end
