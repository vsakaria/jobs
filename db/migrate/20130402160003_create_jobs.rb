class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.string :position_type
      t.string :category
      t.string :description
      t.string :how_to_apply

      t.timestamps
    end
  end
end
