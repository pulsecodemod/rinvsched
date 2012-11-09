class CreateMtrs < ActiveRecord::Migration
  def change
    create_table :mtrs do |t|

      t.timestamps
    end
  end
end
