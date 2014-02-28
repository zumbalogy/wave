class User < ActiveRecord::Base

    has_many :carriers, through: :convos
    has_many :messages, through: :carriers
    has_many :convos, through: :convo_user_joins
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

end
