class CreateContractors < ActiveRecord::Migration[7.0]
  def change
    create_table :contractors do |t|
      t.string :name
      t.string :contractor_name
      t.text :address
      t.string :city
      t.string :state
      t.integer :pincode
      t.integer :mobileno
      t.string :email
      t.string :status
      t.string :password_digest

      t.timestamps
    end
  end
end
