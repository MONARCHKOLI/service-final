class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :category
      t.text :description
      t.integer :amount
      t.string :status
      t.references :contractor,null: false, foreign_key: true

      t.timestamps
    end
  end
end
