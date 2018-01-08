class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :vote
      t.references :voting_block, foreign_key: true
      t.references :baby_name, foreign_key: true

      t.timestamps
    end
  end
end
