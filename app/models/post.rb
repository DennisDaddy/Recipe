class Post < ApplicationRecord
	mount_uploader :picture, PictureUploader
	belongs_to :user

	private
# Validates the size of an uploaded picture.
def picture_size
	if picture.size > 5.megabytes
	errors.add(:picture, "should be less than 5MB")
	end
end

end
