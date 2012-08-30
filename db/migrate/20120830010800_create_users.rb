class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :email, :limit => 100
      t.string :nickname, :limit => 50
      t.string :frequency, :limit => 50
      t.string :moms_email, :limit => 100
    end
  end

  def down
    drop_table :users
  end
end
