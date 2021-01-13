class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :deadline
      t.integer :priority
      t.boolean :done, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
