class Pokemon < ApplicationRecord
  mount_uploader :bgpic, PhotoUploader

  has_and_belongs_to_many :types

  validates :name, uniqueness: true, presence: true
end
