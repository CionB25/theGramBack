QueryType = GraphQL::ObjectType.define do
  name 'Query'
  description '...'

  field :user do
    type UserType
    argument :id, !types.String
    resolve -> (root, args, ctx) {User.find_by(id: args[:id])}
  end

  # field :post do
  #   argument
  # end
end

UserType = GraphQL::ObjectType.define do
  name 'User'
  description '...'

  field :username, !types.String
  field :avatar, !types.String
  field :email, !types.String
  field :id, !types.String
  field :following do
    type -> { types[UserTypes] }
    resolve -> (user, args, ctx {user.following})
  end
  field :followers do
    type -> { types[UserTypes] }
    resolve -> (user, args, ctx {user.followers})
  end
end

QuerySchema = GraphQL::Schema.new(
  query: QueryType
)
