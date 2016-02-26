json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre_completo, :tipo_doc_id, :documento, :telefono, :cantidad_auto
  json.url cliente_url(cliente, format: :json)
end
