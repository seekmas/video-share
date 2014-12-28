class Medium < ActiveRecord::Base
    mount_uploader :video , MediaUploader
    has_many :comment
end
