class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :marca
      t.string :modelo
      t.string :placa
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
