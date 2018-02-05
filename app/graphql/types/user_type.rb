module Types
  UserType = GraphQL::ObjectType.define do
    name 'User'
    description '...'

    field :username, !types.String
    field :avatar, types.String
    field :email, !types.String
    field :id, !types.Int

    field :following, types[UserType] do
      resolve -> (user, args, ctx) {
        user.following.map do |uid|
          person = User.find_by(id: uid)
          person
        end
      }
    end

    field :followers, types[UserType] do
      resolve -> (user, args, ctx) {
        user.followers.map do |uid|
          person = User.find_by(id: uid)
          person
        end
      }
    end

    field :post, types[PostType] do
      resolve -> (user, args, ctx) {Post.where(["user_id =  1"])}
    end
  end

end
