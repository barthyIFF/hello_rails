class CreateAtividades < ActiveRecord::Migration[6.1]
  def change
    create_table :atividades do |t|
      t.string :titulo
      t.date :data
      t.time :inicio
      t.time :fim
      t.float :distancia
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
