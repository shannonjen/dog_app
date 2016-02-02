class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.datetime :birthday
      t.string :city
      t.string :state
      t.boolean :newsletter

      t.timestamps null: false
    end
  end
end
