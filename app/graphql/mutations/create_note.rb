module Mutations
    class CreateNote < Mutations::BaseMutation
      argument :user_id, ID, required: true
      argument :title, String, required: true
      argument :text, String, required: false

      type Types::NoteType
  
      def resolve(user_id: nil, title: nil, text: nil) 

        user = User.find_by(id: user_id)
        if user.nil?
            raise GraphQL::ExecutionError, "User with id #{user_id} does not exist"
        end

        note = Note.create(
          title: title,
          text: text,
          user_id: user_id,
        )
        raise GraphQL::ExecutionError, board.errors.full_messages.join(", ") unless board.errors.empty?
        
        note

      end
    end
  end