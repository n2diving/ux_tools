class AddNameToEmpathyMaps < ActiveRecord::Migration[5.1]
  def change
    add_column :empathy_maps, :name, :string, default: Haikunator.haikunate(0, ' ')
  end
end
