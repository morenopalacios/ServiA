class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre_completo
      t.references :tipo_doc, index: true, foreign_key: true
      t.string :documento
      t.string :telefono
      t.integer :cantidad_auto

      t.timestamps null: false
    end
  end
end
