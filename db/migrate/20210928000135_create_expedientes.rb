class CreateExpedientes < ActiveRecord::Migration[5.2]
  def change
    create_table :expedientes do |t|
      t.string :escuela
      t.string :alumno
      t.string :numero_boleta
      t.string :status

      t.timestamps
    end
  end
end
