# : true

# : true

class CreateExpenditures < ActiveRecord::Migration[7.0]
  def change
    create_table :expenditures do |t|
      t.string :name
      t.float :amount
      t.references :author, foreign_key: { to_table: :users }, null: false

      t.timestamps
    end
  end
end
