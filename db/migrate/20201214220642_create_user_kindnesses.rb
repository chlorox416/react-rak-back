class CreateUserKindnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :user_kindnesses do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :kindness, null: false, foreign_key: true
      t.string :date
      t.string :note
      t.boolean :completion

      t.timestamps
    end
  end
end
