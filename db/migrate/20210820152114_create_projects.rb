class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.boolean :status
      t.text :config
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
