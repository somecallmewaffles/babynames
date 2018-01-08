class CreateVotingBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :voting_blocks do |t|
      t.string :random

      t.timestamps
    end
  end
end
