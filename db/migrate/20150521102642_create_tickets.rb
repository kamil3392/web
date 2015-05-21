class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :comment
      t.string :priority
      t.string :rank
      t.string :status
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
