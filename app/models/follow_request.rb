# == Schema Information
#
# Table name: follow_requests
#
#  id           :bigint           not null, primary key
#  recipient_id :bigint           not null
#  sender_id    :bigint           not null
#  status       :string           default("pending")
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class FollowRequest < ApplicationRecord
  belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"
  belongs_to :sender, class_name: "User", foreign_key: "sender_id"

  enum status: { pending: "pending", rejected: "rejected", accepted: "accepted" }

  validates :recipient_id, uniqueness: { scope: :sender_id, message: "already followed" }
  
end
