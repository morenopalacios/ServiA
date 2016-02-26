json.array!(@autos) do |auto|
  json.extract! auto, :id, :marca, :modelo, :placa, :cliente_id
  json.url auto_url(auto, format: :json)
end
