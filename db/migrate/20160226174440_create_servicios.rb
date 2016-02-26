class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.float :cambio_aceite
      t.float :alineacion_balanceo
      t.float :reparación_automotriz
      t.float :mantenimiento
      t.float :electricidad
      t.references :auto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
