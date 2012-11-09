class Mtr < ActiveRecord::Base
  self.table_name = 'mtr_prt_c'
  #self.primary_key = [:pnum, :mtrnum]
  self.primary_key = 'mtrnum'
  belongs_to :part, :foreign_key => :part_id, :primary_key => :part_id
end
