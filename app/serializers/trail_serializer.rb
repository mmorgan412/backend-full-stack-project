class TrailSerializer < ActiveModel::Serializer
  attributes :id, :trail_name, :mountain_name, :difficulty, :rating
end
