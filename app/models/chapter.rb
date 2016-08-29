# == Schema Information
#
# Table name: chapters
#
#  id         :integer          not null, primary key
#  chapter    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer
#  is_hidden  :boolean          default(TRUE)
#

class Chapter < ApplicationRecord
  belongs_to :course
  has_many :posts, dependent: :destroy

  scope :published, -> { where(is_hidden: false) }

  def publish!
    self.is_hidden = false
    save
  end

  def hide!
    self.is_hidden = true
    save
  end

  def hidden?
    is_hidden
  end
end
