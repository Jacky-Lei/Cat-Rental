# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ActiveRecord::Base

COLORS = ["yellow", "gray", "black", "white"]

  validates :birth_date, presence: true
  validates :color, presence: true, inclusion: { in: COLORS}
  validates :name, presence: true
  validates :sex, presence: true, inclusion: { in: ["M", "F"]}
  validates :description, presence: true

end
