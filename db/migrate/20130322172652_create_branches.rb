class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :name
      t.string :street
      t.string :delegation
      t.string :state
      t.string :town

      t.timestamps
    end
  end
end
