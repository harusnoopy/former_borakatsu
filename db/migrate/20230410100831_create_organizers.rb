class CreateOrganizers < ActiveRecord::Migration[6.1]
  def change
    create_table :organizers do |t|

      t.string :name, null: false
      t.text :introduction, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :telephone_number, null: false
      t.string :email, null: false
      t.string :homepage, null: false

      t.timestamps
    end
  end
end
