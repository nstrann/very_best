require "open-uri"
class Venue < ApplicationRecord
  before_validation :geocode_address

  def geocode_address
    if address.present?
      url = "https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GMAP_API_KEY']}&address=#{URI.encode(address)}"

      raw_data = open(url).read

      parsed_data = JSON.parse(raw_data)

      if parsed_data["results"].present?
        self.address_latitude = parsed_data["results"][0]["geometry"]["location"]["lat"]

        self.address_longitude = parsed_data["results"][0]["geometry"]["location"]["lng"]

        self.address_formatted_address = parsed_data["results"][0]["formatted_address"]
      end
    end
  end
  # Direct associations

  has_many   :bookmarks,
             dependent: :destroy

  belongs_to :neighborhood,
             foreign_key: "n_id"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
