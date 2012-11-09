class PartsController < ApplicationController
  def index
     @parts = Part.find(:all, :conditions => ["part_id in (?)", 1000...1011], :order => :part_id)
  end
end
