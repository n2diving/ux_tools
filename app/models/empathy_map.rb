class EmpathyMap < ApplicationRecord
  belongs_to :user
  has_many :empathy_map_records

  def initialize(attributes=nil)
    attr_with_defaults = { name: Haikunator.haikunate(0, ' ').titleize }.merge(attributes)
    super(attr_with_defaults)
  end
end

# == Schema Information
#
# Table name: empathy_maps
#
#  id         :bigint           not null, primary key
#  name       :string           default("misty moon")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_empathy_maps_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
