class PossibleMember < ActiveRecord::Base
  serialize :consultancy_area, Array
  serialize :information_technology_area, Array
  serialize :outsourcing_area, Array
  serialize :administration_area, Array
  serialize :technical_skills, Array
  serialize :functional_skills, Array
  #before_save :set_consultancy_area
  #validates :email, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}
end
