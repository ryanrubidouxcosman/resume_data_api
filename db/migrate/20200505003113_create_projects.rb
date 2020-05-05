class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.integer :student_id
      t.string :name
      t.text :description
      t.string :url
      t.string :screenshot

      t.timestamps
    end
  end
end
