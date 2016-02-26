module ClientesHelper

	def mostrardoc(id)
		Tipodoc.where(:id => id).pluck(:nombre).first
	end
	
end
