class User < ApplicationRecord
    mount_uploader :portrait, PortraitUploader
    has_many :participants
    has_many :events, through: :participants
end
