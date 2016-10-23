class User < ApplicationRecord
  acts_as_paranoid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :charges
  belongs_to :avatar

  enum role: [:trial, :user, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  def subscribed?
    stripe_subscription_id?
  end

  def avatar_url(size=:sm)
    if self.avatar.present?
      url = self.avatar.image[size].url(public: true)
    else
      width = Avatar.sizes[size]
      hash = Digest::MD5.hexdigest(self.email.try(:downcase) || "noemail")
      url = "https://secure.gravatar.com/avatar/#{hash}?d=blank&s=#{width}"
    end
    url
  end
end
