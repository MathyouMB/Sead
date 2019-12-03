module Types
  class MutationType < Types::BaseObject
    field :create_note,
          mutation: Mutations::CreateNote,
          description: 'Create Note'

  end
end
