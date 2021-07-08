class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.integer :privateNumber
      t.text :employeeNumber
      t.text :Name
      t.text :Email
      t.text :Position
      t.integer :idAdmin
      t.integer :idCompany
      t.text :attendaceDate

      t.timestamps
    end
  end
end
