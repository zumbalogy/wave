class User < ActiveRecord::Base

    has_many :carriers, through: :convos
    has_many :messages, through: :carriers
    has_and_belongs_to_many :convos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

end
