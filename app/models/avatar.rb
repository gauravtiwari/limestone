class Avatar < ApplicationRecord
  include ImageUploader[:image]
end
