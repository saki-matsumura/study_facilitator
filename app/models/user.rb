class User < ApplicationRecord
  validates :name, presence: true
  validates :target, inclusion: {in: [true, false]}
  validates :generation, numericality: {only_integer: true}, length: { maximum: 4 }, allow_blank: true
  # ソート
  scope :target, -> { order(target: :desc) }
  scope :generation, -> { order(generation: :desc) }
  scope :name_sort, -> { order(name: :asc) }
end
