module Types
  class QueryType < Types::BaseObject
    
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :notes, [Types::NoteType], null: false
    def notes
      Note.all
    end

  end
end
