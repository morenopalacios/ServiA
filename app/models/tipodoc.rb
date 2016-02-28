class Tipodoc < ActiveRecord::Base

	# Validar que los atributos sean obligatorios
	 validates :nombre, :presence => true
end
