class CreatePossibleMembers < ActiveRecord::Migration
  def change
    create_table :possible_members do |t|
      t.string          :first_name
      t.string          :first_surname
      t.string          :last_surname
      t.string          :email
      t.string          :document_type
      t.string          :document_number
      t.string          :consultancy_area, array: true, default: [""]
      t.string          :information_technology_area, array: true, default: [""]
      t.string          :outsourcing_area, array: true, default: [""]
      t.string          :administration_area, array: true, default: [""]
      t.string          :technical_skills, array: true, default: [""]
      t.string          :functional_skills, array: true, default: [""]
      t.text            :interests
      t.timestamps null: false
    end
  end
end
