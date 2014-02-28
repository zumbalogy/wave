class Convo < ActiveRecord::Base
    has_many :convo_user_joins
    has_many :users, through: :convo_user_joins
    
    has_many :carriers
    has_many :messages, through: :carriers
end
