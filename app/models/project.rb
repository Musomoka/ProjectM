class Project < ActiveRecord::Base
    belongs_to :company
    has_many :tasks, :dependent => :destroy
    accepts_nested_attributes_for :tasks
    
    validates_presence_of :name
    
end

