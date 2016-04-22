class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :description
      t.boolean :is_complete
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
