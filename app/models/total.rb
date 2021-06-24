class Total < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    validates :protein
    validates :fat
    validates :carb
    validates :calorie
  end
end