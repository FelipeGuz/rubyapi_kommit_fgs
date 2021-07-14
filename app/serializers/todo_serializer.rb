class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :items

  def items
    object.items.map { |item| ItemSerializer.new(item, without_serializer: true) }
  end
end
