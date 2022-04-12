class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :own_photos, class_name: "Photo", foreign_key: "owner_id"
  has_many :comments, foreign_key: "author_id"
  has_many :follow_requests_recieved, foreign_key: "recipient"
  has_many :follow_requests_sent, foreign_key: "sender"
  has_many :likes, foreign_key: "fan_id"

 end
