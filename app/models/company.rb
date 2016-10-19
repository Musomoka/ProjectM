class Company < ActiveRecord::Base
    has_many :projects
    has_many :projects, :dependent => :destroy
end
