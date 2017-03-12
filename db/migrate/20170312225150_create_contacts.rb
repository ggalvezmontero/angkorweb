class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string          :name, null: false
      t.string          :email, null: false
      t.string          :phone, null: false
      t.string          :business
      t.string          :position
      t.string          :message
      t.timestamps null: false
    end
  end
end
