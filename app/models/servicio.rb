class Servicio < ActiveRecord::Base
  belongs_to :auto

  # Validar que los atributos sean obligatorios
  validates :cambio_aceite, :presence => true
  validates :alineacion_balanceo, :presence => true
  validates :reparación_automotriz, :presence => true
  validates :mantenimiento, :presence => true
  validates :electricidad, :presence => true
  validates :auto_id, :presence => true
  
end
