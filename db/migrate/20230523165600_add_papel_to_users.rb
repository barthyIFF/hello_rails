class AddPapelToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :papel, :string
  end
end
