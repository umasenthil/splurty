class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 500, :minimum => 3 }
end
