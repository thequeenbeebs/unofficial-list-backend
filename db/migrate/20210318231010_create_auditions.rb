class CreateAuditions < ActiveRecord::Migration[6.0]
  def change
    create_table :auditions do |t|
      t.integer :casting_director_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :avg_audition_length
      t.string :production
      t.text :casting_breakdown
      t.text :preparation_instructions
      t.timestamps
    end
  end
end
