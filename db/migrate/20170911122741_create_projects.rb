class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :decription
      t.date :start_at, null: false
      t.date :end_at, null: false
      t.date :initial_end_at, null: false
      t.decimal :advancement, precision: 5, scale: 2, default: "0.0", null: false
      t.boolean :is_important, null: false, default: false
      t.integer :created_by, null: false
      t.integer :updated_by, null: false

      t.timestamps  null: false
    end
  end
end
