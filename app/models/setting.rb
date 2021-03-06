class Setting < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader


end

# == Schema Information
#
# Table name: settings
#
#  id               :integer          not null, primary key
#  username         :string
#  nickname         :string
#  hobbies          :string
#  birthday         :string
#  sex              :string
#  selfintroduction :string
#  address          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  avatar           :string
#
