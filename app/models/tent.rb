class Tent < ActiveRecord::Base
    
    has_many :menus
    has_many :reviews
    
end
