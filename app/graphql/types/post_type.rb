module Types
  PostType = GraphQL::ObjectType.define do
    name 'Post'
    description '...'

    field :image, !types.String
    field :comment, !types.String
    field :id, !types.Int
  end
    #
    # field :user, !UserType do
    #   resolve -> (user, args, ctx {user.id})
    # end

end
