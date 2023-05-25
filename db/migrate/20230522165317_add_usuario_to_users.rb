class AddUsuarioToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :usuario, :string
  end
end
