class Routeinfo < ApplicationRecord
  belongs_to :chintai, optional: true
  validates :station, length: { maximum: 30 }
end
