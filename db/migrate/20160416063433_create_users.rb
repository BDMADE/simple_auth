class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest

      ## Rememberable
      t.datetime :remember_created_at
      ## Trackable
      #t.integer  :sign_in_count, default: 0, null: true
      #t.datetime :current_sign_in_at
      #t.datetime :last_sign_in_at
      #t.string   :current_sign_in_ip
      #t.string   :last_sign_in_ip



      t.references :role, index: true, foreign_key: true
      t.timestamps null: false
      
    end
  end
end
