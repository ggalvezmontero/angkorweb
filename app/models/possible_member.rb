class PossibleMember < ActiveRecord::Base
  after_create :send_notification
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
  validates :email, format: {with: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i}

  scope :senior, -> { where(member_type: "senior") }
  scope :young, -> { where(member_type: "young") }
  scope :student, -> { where(member_type: "student") }

  def send_notification
    NotificationMailer.join_us(self).deliver_later
  end

  def member_type_description
    if member_type == "senior"
      return "Profesionales con experiencia"
    elsif member_type == "young"
      return "Jóvenes profesionales"
    else
      return "Estudiantes y recién egresados"
    end
  end

  def study_type_description
    if study_type == "0"
      return "Universitario"
    else
      return "Técnico"
    end
  end

  def document_type_description
    if document_type == "0"
      return "DNI"
    elsif document_type == "1"
      return "Carnet de Extranjería"
    else
      return "Pasaporte"
    end
  end

end
