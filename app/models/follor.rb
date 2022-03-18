class Follor < ApplicationRecord
  belongs_to:follor, class_name: "User"
  belongs_to:follower, class_name: "User"
end
