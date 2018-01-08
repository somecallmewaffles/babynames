class CreateBabyNames < ActiveRecord::Migration[5.1]
  def change
    create_table :baby_names do |t|
      t.string :name
      t.string :boy
      t.string :girl

      t.timestamps
    end
  end
end
