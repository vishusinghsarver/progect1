class Task < ApplicationRecord
    validates :title,:description, presence: true
    belongs_to :user
    CATEGORY= ["Home","Office","Market"]
end
