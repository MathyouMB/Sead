module Types
  class MutationType < Types::BaseObject
   :create_note,
      mutation: Mutations::CreateNote,
      description: 'Create Note'
      
  end
end
