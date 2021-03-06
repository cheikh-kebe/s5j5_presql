class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :phone_number
      t.string :description
      t.belongs_to :city, index: true 

      t.timestamps
    end
  end
end
