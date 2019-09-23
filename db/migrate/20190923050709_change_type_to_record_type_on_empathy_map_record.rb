class ChangeTypeToRecordTypeOnEmpathyMapRecord < ActiveRecord::Migration[5.1]
  def change
    rename_column :empathy_map_records, :type, :record_type
  end
end
