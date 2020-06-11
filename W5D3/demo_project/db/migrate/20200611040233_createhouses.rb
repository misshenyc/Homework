class CreateHouse < ActiveRecord::Migration[5.2]
  def change
    create_table :house do |t|
      s.string :address, null:false
    end

  end
end
