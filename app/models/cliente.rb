class Cliente < ActiveRecord::Base
  belongs_to :tipo_doc

  # Validar que los atributos sean obligatorios
  validates :nombre_completo, :presence => true
  validates :tipo_doc_id, :presence => true
  validates :documento, :presence => true
  validates :telefono, :presence => true
  
end
