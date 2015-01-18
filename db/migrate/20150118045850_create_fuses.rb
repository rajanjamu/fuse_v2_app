class CreateFuses < ActiveRecord::Migration
  def change
    create_table :fuses do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
