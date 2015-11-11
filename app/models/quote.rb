class Quote < ActiveRecord::Base
	validates :saying, :presence => true, :length => { :maximum => 500, :minimum => 3 }
	
	def unique_tag
		initials = ''
		abbr = self.author.split(" ").collect do |w|
			w[0]
		end
		abbr.join+'#'+self.id.to_s
		
	end
end
