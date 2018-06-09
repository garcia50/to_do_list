class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.timestamps
    end

    create_table :to_do_lists do |t|
      t.string :day
      t.string :task
      t.timestamps
    end
  end
end
