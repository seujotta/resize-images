require "open-uri"

class Image
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :file,
          :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
          :url => "/system/:attachment/:id/:style/:filename",
          styles: { small: "320x240", medium: "384x288", large: "640x480" }

  validates_attachment_content_type :file, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def image_from_url(url)
    self.file = open(url)
  end
end
