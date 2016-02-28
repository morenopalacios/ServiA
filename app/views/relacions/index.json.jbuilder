json.array!(@relacions) do |relacion|
  json.extract! relacion, :id, :auto_id, :servicio_id, :estado_id
  json.url relacion_url(relacion, format: :json)
end
