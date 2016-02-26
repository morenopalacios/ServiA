json.array!(@servicios) do |servicio|
  json.extract! servicio, :id, :cambio_aceite, :alineacion_balanceo, :reparación_automotriz, :mantenimiento, :electricidad, :auto_id
  json.url servicio_url(servicio, format: :json)
end
