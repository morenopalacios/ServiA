class Relacion < ActiveRecord::Base
  belongs_to :auto
  belongs_to :servicio
  belongs_to :estado
end
