class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.integer :idAdmin
      t.text :Name
      t.text :Email
      t.text :Password

      t.timestamps
    end
  end
end
