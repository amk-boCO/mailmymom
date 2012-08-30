class AddOptions < ActiveRecord::Migration
  def up
    create_table :options do |t|
      t.integer :user_id
      t.integer :option_id
      t.string  :option
    end
  end

  def down
    drop_table :options
  end
end
