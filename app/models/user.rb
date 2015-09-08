class User < ActiveRecord::Base
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
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>"}, default_url:"/images/:style/missing.png"
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/ , /gif\Z/]
  validates :name, presence: true
end
