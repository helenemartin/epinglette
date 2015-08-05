class Pin < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100" }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
    validates :image, presence: true, unless: ->(pin){pin.video_url.present?}
    validates :video_url, presence: true, unless: ->(pin){pin.image.present?}
    validates :description, presence: true
   
end
