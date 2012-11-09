class Part < ActiveRecord::Base
  # attr_accessible :title, :body
  self.table_name = 'prt_stats_c'
  self.primary_key = 'part_id'
  has_many :mtrs, :order => 'odd ASC'
end
