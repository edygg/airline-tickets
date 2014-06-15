class AddAdminToClients < ActiveRecord::Migration
  def change
    add_column :clients, :admin, :boolean
  end
   def self.up
    add_column :clients, :admin, :boolean, :default => false
  end

  def self.down
    remove_column :clients, :admin
  end
end
