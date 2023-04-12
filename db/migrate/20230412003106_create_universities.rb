class CreateUniversities < ActiveRecord::Migration[7.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :logo
      t.string :contact_info
      t.string :about

      t.timestamps
    end
  end
end
