class CreateKeyrepos < ActiveRecord::Migration
  def change
    create_table :keyrepos do |t|
      t.string :name
      t.string :key

      t.timestamps
    end
  end
end
