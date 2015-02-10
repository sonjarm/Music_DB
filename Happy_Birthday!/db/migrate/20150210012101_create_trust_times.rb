class CreateTrustTimes < ActiveRecord::Migration
  def change
    create_table :trust_times do |t|
      t.string :Happy_Birthday
      t.text :notes
      t.date :birthdate
      t.boolean :done

      t.timestamps
    end
  end
end
