class DropObsoleteUsersTable < ActiveRecord::Migration
  def self.up
    drop_table :users
  end

  def self.down
    create_table :users do |t|
      t.string    :full_name,           :null => false
      t.string    :login,               :null => false
      t.string    :email,               :null => false
      t.string    :crypted_password,    :null => false
      t.string    :password_salt,       :null => false
      t.string    :persistence_token,   :null => false
      t.string    :perishable_token,    :null => false

      t.integer   :login_count,         :null => false, :default => 0
      t.integer   :failed_login_count,  :null => false, :default => 0
      t.datetime  :last_request_at
      t.datetime  :current_login_at
      t.datetime  :last_login_at
      t.string    :current_login_ip
      t.string    :last_login_ip

      t.string    :cached_slug

      t.timestamps
    end
  end
end

