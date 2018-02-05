module Types
  PostType = GraphQL::ObjectType.define do
    name 'Post'
    description '...'

    field :image, !types.String
    field :comment, !types.String
    # field :user, types[!UserType]
    # field :user, types[!UserType] do
    #   resolve -> (user, args, ctx) {}
    # end
    # field :id, !types.Int
  end

  # global_id_field :id
    #

    # field :user, types[!UserType]

end
