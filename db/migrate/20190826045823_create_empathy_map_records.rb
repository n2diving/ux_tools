class CreateEmpathyMapRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :empathy_map_records do |t|
      t.references :empathy_map, foreign_key: true
      t.string :type
      t.integer :group
      t.integer :position
      t.text :text

      t.timestamps
    end
  end
end
