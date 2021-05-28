class CreateRides < ActiveRecord::Migration
  def change

    create_table :passengers do |t|
      t.timestamps
    end

    create_table :taxis do |t|
      t.timestamps null: false
    end

    create_table :rides do |t|
      t.belongs_to :passenger
      t.belongs_to :taxi
      t.timestamps
    end
    
  end
end
