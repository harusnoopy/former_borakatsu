class CreateParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :participations do |t|

      t.boolean :is_applying, null: false, default: true

      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
