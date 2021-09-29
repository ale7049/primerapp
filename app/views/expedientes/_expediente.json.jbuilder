json.extract! expediente, :id, :escuela, :alumno, :numero_boleta, :status, :created_at, :updated_at
json.url expediente_url(expediente, format: :json)
