class AddAttachmentCvToPossibleMembers < ActiveRecord::Migration
  def self.up
    change_table :possible_members do |t|
      t.attachment :cv
    end
  end

  def self.down
    remove_attachment :possible_members, :cv
  end
end
