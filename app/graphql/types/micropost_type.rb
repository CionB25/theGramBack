module Types
  MicropostType = GraphQL::ObjectType.define do
    name 'Micropost'
    description '...'

    field :image, !types.String
    field :comment, !types.String
    field :owner, !types.String
    # field :id, !types.Int
  end
end
