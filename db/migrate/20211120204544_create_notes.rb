class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :description
      t.references :balance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
