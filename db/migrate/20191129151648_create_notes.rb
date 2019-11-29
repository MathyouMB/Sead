class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :text
      t.timestamps
    end
  end
end
