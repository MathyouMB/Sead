module Mutations
    class DeleteNote < Mutations::BaseMutation
      argument :user_id, ID, required: true
      argument :note_id, ID, required: true

      type Types::NoteType
  
      def resolve(user_id: nil, note_id: nil) 

        user = User.find_by(id: user_id)
        if user.nil?
            raise GraphQL::ExecutionError, "User with id #{user_id} does not exist"
        end

        note = Note.find_by(id: note_id)
        if note.nil?
            raise GraphQL::ExecutionError, "note with id #{note_id} does not exist"
        end

        note.destroy
        
        raise GraphQL::ExecutionError, board.errors.full_messages.join(", ") unless note.errors.empty?
        
        note

      end
    end
  end