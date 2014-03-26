class CreateApplicant < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :name
      t.string :github
      t.string :email
      t.timestamps
    end
  end
end
