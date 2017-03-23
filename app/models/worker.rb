class Worker < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validate :email_or_phone

  private

  def email_or_phone
    if email.blank? && phone.blank?
      errors[:base] << "Please specify either email or phone, or both"
    end
  end
end
