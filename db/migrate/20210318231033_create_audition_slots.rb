class CreateAuditionSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :audition_slots do |t|
      t.integer :actor_id
      t.integer :audition_id
      t.integer :list_number
      t.timestamps
    end
  end
end
