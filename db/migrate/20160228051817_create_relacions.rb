class CreateRelacions < ActiveRecord::Migration
  def change
    create_table :relacions do |t|
      t.references :auto, index: true, foreign_key: true
      t.references :servicio, index: true, foreign_key: true
      t.references :estado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
