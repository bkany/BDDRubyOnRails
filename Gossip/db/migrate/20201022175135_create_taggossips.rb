class Taggossips < ActiveRecord::Migration[6.0]
  def change
  	create_table :taggossips do |t|
			t.belongs_to :tag, index: true
			t.belongs_to :potin, index: true 
      t.timestamps
    end
    
    add_reference :potins, :taggossip, foreign_key: true
    add_reference :tags, :taggossip, foreign_key: true

  end
end
