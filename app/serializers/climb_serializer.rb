class ClimbSerializer < ActiveModel::Serializer
  attributes :route_name, :route_grade, :number_of_tries, :send, :editable
  has_one :user

  def editable
    scope == object.user
  end

end
