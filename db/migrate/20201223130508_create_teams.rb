class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :leader_name
      t.string :phone_number
      t.string :email
      t.integer :level_type
      t.string :password_digest
      t.string :image

      t.timestamps
    end
  end
end
