module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: true
    field :email, String, null: true
    field :notes, [Types::NoteType], null: true
  end
end