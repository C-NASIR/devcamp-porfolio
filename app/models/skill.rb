class Skill < ApplicationRecord
    validates_presence_of :title, :percentage_utilized, :badge
    after_initialize :set_defaults
    def set_defaults
        self.badge ||= "https://via.placeholder.com/250x250"
    end
end