class PossibleMember < ActiveRecord::Base
  has_attached_file :cv,
                    :url  => "/assets/possible_members/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/possible_members/:id/:style/:basename.:extension"

  do_not_validate_attachment_file_type :cv

  serialize :consultancy_area, Array
  serialize :information_technology_area, Array
  serialize :outsourcing_area, Array
  serialize :administration_area, Array
  serialize :technical_skills, Array
  serialize :functional_skills, Array
  #validates :email, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}

  scope :senior, -> { where(member_type: "senior") }
  scope :young, -> { where(member_type: "young") }
  scope :student, -> { where(member_type: "student") }

end
