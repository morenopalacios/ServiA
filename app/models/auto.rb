class Auto < ActiveRecord::Base
  belongs_to :cliente

  # Validar que los atributos sean obligatorios
  validates :cliente_id, :presence => true
  validates :marca, :presence => true
  validates :modelo, :presence => true
  validates :placa, :presence => true

end
