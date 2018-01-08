class Vote < ApplicationRecord
  has_one :voting_block
  has_one :baby_name
end
