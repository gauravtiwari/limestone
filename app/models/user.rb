class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :charges

   def name
     [first_name, last_name].join " "
   end

   def subscribed?
    stripe_subscription_id?
   end
end