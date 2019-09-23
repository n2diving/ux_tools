require 'test_helper'

class EmpathyMapRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: empathy_map_records
#
#  id             :bigint           not null, primary key
#  group          :integer
#  position       :integer
#  record_type    :string
#  text           :text
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
