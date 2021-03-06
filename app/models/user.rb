# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
    class_name: :Artwork,
    primary_key: :id,
    foreign_key: :artist_id

  has_many :shared_views,
  class_name: :ArtworkShare,
  primary_key: :id,
  foreign_key: :viewer_id

  has_many :shared_artworks,
  through: :shared_views,
  source: :artwork
end
