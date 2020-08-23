class CreateSleepRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :sleep_records do |t|
      t.datetime :clockin_time
      t.datetime :clockout_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
