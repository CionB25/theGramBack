module Types
  MicropostType = GraphQL::ObjectType.define do
    name 'Post'
    description '...'

    field :image, !types.String
    field :comment, !types.String
    # field :id, !types.Int
  end
end
