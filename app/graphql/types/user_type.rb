module Types
  UserType = GraphQL::ObjectType.define do
    name 'User'
    description '...'

    field :username, !types.String
    field :avatar, types.String
    field :email, !types.String
    field :id, !types.Int
    # field :following, types[UserType] do
    #   # type -> { types[UserTypes] }
    #   resolve -> (user, args, ctx {user.following})
    # end
    # field :followers do
    #   type -> { types[UserTypes] }
    #   resolve -> (user, args, ctx {user.followers})
    # end
    # field :post, {!types[PostTypes]} do
    #   resolve -> (user, args, ctx {Post.all})
    # end
  end

end
