class CreateStrainWines < ActiveRecord::Migration[5.2]
  def change
    create_table :strain_wines do |t|
      t.references :strain, foreign_key: true
      t.references :wine, foreign_key: true
      t.string :strain_id
      t.string :wine_id
      t.integer :percentage

      t.timestamps
    end
  end
end
