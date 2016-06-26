class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :admin, default: false
      t.string :boolean

      t.timestamps null: false
    end
  end
end
