class PartsController < ApplicationController
  def index
     @parts = Part.find(:all, :conditions => ["part_id in (?)", 1000..1041], :order => :part_id)
     #@parts = Part.find(:all, :conditions => ["part_id in ('1013','1016','1017','1018','1019','1020','1021','1034','1038','1040')"], :order => :part_id)
  end

  
  def assy
    @parts = Part.assy_parts(:part_id => :part_id)
    #@parts = Part.find(:all, :conditions => ["part_id in ('1018','1020','1021','1032','1057','1158','1815')"], :order => :part_id)
    #render :partial => "parts/assy",
    #  :locals => { :parts => @parts,
     #              :divid => params[:update]
    #  }
    render :text => "hello"
  end
  def new
    ##@ticket = Ticket.new
    ##asset = @ticket.assets.build
    #asset = Asset.new
    ##render :partial => "files/form",
    ##       :locals => { :number => params[:number].to_i,
    ##                    :asset => asset }
  end
  def assy2
    #@parts = Part.assy_parts(params[:part_id])
    @parts = Part.find(:all, :conditions => ["part_id in (?)", params[:part_id]], :order => :part_id)
    render :partial => "parts/assy2",
      :locals => { :parts => @parts }
  end
end
