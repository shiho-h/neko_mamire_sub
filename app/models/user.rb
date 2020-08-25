class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
         # , :validatable

         validates :name, presence: true
         validates :email, presence: true
         # validates :password, presence: true


  has_many :cat_images, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_cat_images, through: :bookmarks, source: :cat_image

  enum status: {
  	会員: 0,
  	退会済: 1
  }





   def active_for_authentication?
  		super && (self.status === "会員")
  end

end
