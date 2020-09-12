class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    #this runs after the new action instantializes before it creates
    after_initialize :set_defaults
    def set_defaults
        self.main_image ||= "https://via.placeholder.com/600x400"
        self.thumb_image ||= "https://via.placeholder.com/350x200"
    end

    # this methods if for pure demonstration
    # you can filter data in two ways 
    def self.reactjs
        where(subtitle: "React JS")      
    end
    # and then call inside the action like   Portfolio.angular instead of .all
    #or 
    scope :ruby_on_rails, -> {where(subtitle: "React JS")}
    #which is same as option one, Portfolio.ruby_on_rails 

end
