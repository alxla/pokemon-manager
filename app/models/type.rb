class Type < ApplicationRecord
  mount_uploader :pic, PhotoUploader

  has_and_belongs_to_many :pokemons

  validates :name, uniqueness: true, presence: true

end
