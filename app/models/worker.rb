class Worker < ApplicationRecord
  belongs_to :user
  belongs_to :schedule
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :phone, length: {maximum: 20}
  validate :email_or_phone

  private

  def email_or_phone
    if email.blank? && phone.blank?
      errors[:base] << "Please specify either email or phone, or both"
    end
  end
end
