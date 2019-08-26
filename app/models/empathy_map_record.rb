class EmpathyMapRecord < ApplicationRecord
  belongs_to :empathy_map
end

# == Schema Information
#
# Table name: empathy_map_records
#
#  id             :bigint           not null, primary key
#  group          :integer
#  position       :integer
#  text           :text
#  type           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  empathy_map_id :bigint
#
# Indexes
#
#  index_empathy_map_records_on_empathy_map_id  (empathy_map_id)
#
# Foreign Keys
#
#  fk_rails_...  (empathy_map_id => empathy_maps.id)
#
