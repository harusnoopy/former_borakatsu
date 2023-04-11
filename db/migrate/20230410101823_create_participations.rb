class CreateParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :participations do |t|
      
      t.boolean :is_applying, null: false, default: true

      t.timestamps
    end
  end
end
