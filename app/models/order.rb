class Order < ApplicationRecord
  belongs_to :client, :dependent => :destroy
  has_one :delivery
  has_one :bread
  has_one :order_tracker, :dependent => :destroy
  after_create :build_order_tracker
  geocoded_by :address, :latitude => :lat, :longitude => :lon
  after_validation :geocode, if: ->(obj) {obj.client_address.present? && obj.client_address_changed?}

  def address
    [client_address, client_state].compact.join(', ')
  end

end
