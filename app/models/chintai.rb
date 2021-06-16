class Chintai < ApplicationRecord
    validates :rentname,  presence: true, length: { maximum: 30 }
    validates :wage,  presence: true, numericality: { greater_than: 0}
    validates :address,  presence: true, length: { maximum: 30 }
    validates :age,  presence: true, numericality: { greater_than_or_equal_to: 0}
    has_many :routeinfos, dependent: :destroy
    accepts_nested_attributes_for :routeinfos, reject_if: :all_blank, allow_destroy: true
end
