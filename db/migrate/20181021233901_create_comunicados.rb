class CreateComunicados < ActiveRecord::Migration[5.2]
  def change
    create_table :comunicados do |t|
      t.string :titulo
      t.text :mensaje
      t.text :mensaje_markdown
      t.string :archivo
      t.boolean :prioridad
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
