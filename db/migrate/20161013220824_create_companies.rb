class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.date :year_end
      t.string :tax_number
      t.string :address_1
      t.string :address_2
      t.string :address_3
      t.string :address_44

      t.timestamps null: false
    end
  end
end
