# frozen_string_literal: true

# : true

# : true

class AddNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
  end
end
