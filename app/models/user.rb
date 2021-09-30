class User < ActiveRecord::Base

    has_many :rides
    has_many :attractions, through: :rides

    validates :password, presence: true
    validates :admin, inclusion: false

    def mood
        if self.valid?
            if !self.admin && self.nausea > self.happiness
                "sad"
            else
                "happy"
            end
        end
    end
end
