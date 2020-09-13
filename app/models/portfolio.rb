class Portfolio < ApplicationRecord
    has_many :Technologies

    #create a technologies att the same time creating the portfolio
    #Portfolio.create!(title:"", subtitle: "", etc, Technologies_attributes:[{},{}])
    accepts_nested_attributes_for :Technologies,
                                  reject_if: lambda {|attrs| attrs['name'].blank?}

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
