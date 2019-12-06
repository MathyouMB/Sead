module Types
  class MutationType < Types::BaseObject
    field :create_note,
          mutation: Mutations::CreateNote,
          description: 'Create Note'
    field :delete_note,
          mutation: Mutations::DeleteNote,
          description: 'Delete Note'
  end
end
