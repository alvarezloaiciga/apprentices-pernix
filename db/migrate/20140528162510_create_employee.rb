class CreateEmployee < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
	  t.string :position
      t.timestamps
    end
  end
end
