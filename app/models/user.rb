class User < ApplicationRecord
  validates :name, presence: true
  validates :target, inclusion: {in: [true, false]}

  # ソート
  scope :target, -> { order(target: :desc) }
  scope :generation, -> { order(generation: :desc) }
end
