class CreateGraphentabelles < ActiveRecord::Migration
  def self.up
    create_table :graphentabelles do |t|
      t.string :punkt_1
      t.string :punkt_2
      t.integer :laenge

      t.timestamps
    end
  end

  def self.down
    drop_table :graphentabelles
  end
end
