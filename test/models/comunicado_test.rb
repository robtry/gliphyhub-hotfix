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

require 'test_helper'

class ComunicadoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
