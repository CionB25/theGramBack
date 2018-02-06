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
    field :microposts, types[MicropostType] do
      resolve -> (micropost, args, ctx) { Micropost.all }
    end
    # field :post, types[PostType] do
    #   resolve -> (user, args, ctx) {Post.where(["user_id =  1"])}
    # end
  end

  # global_id_field :id
    #

    # field :user, types[!UserType]

end
