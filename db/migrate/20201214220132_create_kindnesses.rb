class CreateKindnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :kindnesses do |t|
      t.string :action
      t.string :category

      t.timestamps
    end
  end
end
