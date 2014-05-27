class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.text :bio
      t.references :team, index: true

      t.timestamps
    end
  end
end
