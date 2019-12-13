class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.references :user, foreign_key: true
      t.references :record, null:false,  foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
