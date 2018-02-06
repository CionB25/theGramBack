Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end


  # field :node, GraphQL::Relay::Node.field

  field :me, Types::UserType  do
    description "The current user"
    resolve -> (obj, args, cts) {  User.first }
  end

  field :post, types[Types::PostType] do
    description "Posts for current user"
    resolve -> (obj, args, cts) { Post.all }
  end

  # field :micropost, types[Types::MicropostType] do
  #   description "..."
  #   resolve -> (obj, args, cts) { Micropost.all }
  # end

end
