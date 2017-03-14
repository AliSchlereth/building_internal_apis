class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  has_many :orders

  def num_orders
    object.orders.count
  end

end
