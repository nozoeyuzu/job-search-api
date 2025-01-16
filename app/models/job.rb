class Job < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :category, presence: true
    validates :salary, presence: true
end
