class Part < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name = 'prt_stats_c'
  self.primary_key = 'part_id'
  has_many :mtrs, :order => 'odd ASC'

  def self.assy_parts(part)
    Part.find_by_sql["select distinct part_id from (select ropnum, inum from mtr_prt_c where part_id = ? and ttype = 'po') a join (select part_id, ropnum, inum from mtr_prt_c where ttype='wm') b on a.ropnum=b.ropnum and a.inum=b.inum order by part_id",part]
  end

end


