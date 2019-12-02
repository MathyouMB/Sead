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

    field :login, Types::UserType, null: false do
      argument :email, String, required: true
      argument :password, String, required: true
    end

    def login(email:, password:)
      User.find_by(email: email)
    end

    field :notes, [Types::NoteType], null: false
    def notes
      Note.all
    end

    field :note, Types::NoteType, null: false do
      argument :id, ID, required: true
    end

    def note(id:)
      Note.find(id)
    end

  end
end
