class Auto < ActiveRecord::Base
  belongs_to :cliente
#validates :nombre_completo, :presence => true
end
