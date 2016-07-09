class Impressions < ActiveRecord::Base
  belongs_to :impressionable, :polymorphic=>true, counter_cache: :impressions_count
  is_impressionable :counter_cache => true, :column_name => :viewcount
end

class CreateImpressionsTable < ActiveRecord::Migration
  def self.up
    create_table :impressions, :force => true do |t|
      t.string :impressionable_type
      t.integer :impressionable_id
      t.integer :user_id
      t.string :ip_address
      t.timestamps
    end
  end

  def self.down
    drop_table :impressions
  end
end
