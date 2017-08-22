# == Schema Information
#
# Table name: artworks
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  validates :title, :artist_id, :image_url, presence: true

  validates :title, uniqueness: {scope: :artist_id}

  belongs_to :artist,
  class_name: :User,
  primary_key: :id,
  foreign_key: :artist_id

  has_many :views,
  class_name: :ArtworkShare,
  primary_key: :id,
  foreign_key: :artwork_id

  has_many :viewers,
    through: :views,
    source: :viewer
end
