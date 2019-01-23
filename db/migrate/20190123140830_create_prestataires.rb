class CreatePrestataires < ActiveRecord::Migration[5.2]
  def change
    create_table :prestataires do |t|
      t.string :categorie
      t.string :nom
      t.string :remise
      t.string :prestation
      t.text :description
      t.string :ville
      t.string :imageurl

      t.timestamps
    end
  end
end
