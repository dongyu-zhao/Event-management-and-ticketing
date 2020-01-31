class CreatTables1 < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |u|
      u.string :name
      u.string :email
      u.string :password
      u.string :display_url
    end

    create_table :participants do |u|
      u.belongs_to :user
      u.belongs_to :event
      u.belongs_to :role
    end

    create_table :events do |u|
      u.string :title
      u.string :price
      u.string :time
      u.string :place
      u.string :description
    end

    create_table :roles do |u|
      u.string :name
    end

    create_table :pictures do |u|
      u.belongs_to :event
      u.string :url
    end

    create_table :videos do |u|
      u.belongs_to :event
      u.string :url
    end

    create_table :friends do |u|
      u.belongs_to :user
      u.bigint :friend_id
    end

  end
end
