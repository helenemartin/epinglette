class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged


  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pins, dependent: :destroy
  
  has_attached_file :avatar, 
    styles: { medium: "200X200#", thumb: ""},
    convert_options: { thumb: "-gravity Center -crop 500x500+0+0 +repage -resize 100x100^"},
    default_url: ActionController::Base.helpers.asset_path("/assets/ming.png")


  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/ , /gif\Z/]
  validates :name, presence: true

  
end
