# == Schema Information
#
# Table name: comunicados
#
#  id               :bigint(8)        not null, primary key
#  titulo           :string
#  mensaje          :text
#  mensaje_markdown :text
#  archivo          :string
#  prioridad        :boolean
#  user_id          :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Comunicado < ApplicationRecord
  belongs_to :user
  validates :titulo, presence: true, length: { in: 5..30 }  
  validates :mensaje, presence: true
	mount_uploader :archivo, DocUploader
end
