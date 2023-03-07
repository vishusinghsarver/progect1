class Task < ApplicationRecord
    belongs_to :user
    CATEGORY= ["Home","Office","Market"]
end
