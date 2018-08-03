class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.integer :password, null: false
      t.integer :username, null: false
      t.string :avatar

      t.timestamps
    end
  end
end
