class Carrier < ActiveRecord::Base
    belongs_to :user
    belongs_to :convo
    has_many :messages
end
