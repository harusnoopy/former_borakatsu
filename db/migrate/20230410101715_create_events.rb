class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      
      t.string :name, null: false
      t.text :introduction, null: false
      t.date :date, null: false
      t.string :place, null: false
      t.text :schedule, null: false
      t.integer :number_of_people, null: false
      t.boolean :is_recruiting, null: false, default: true
      
      t.references :organizer, foreign_key: true

      t.timestamps
    end
  end
end
