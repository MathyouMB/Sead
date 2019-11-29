module Types
  class NoteType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :text, String, null: true
  end
end