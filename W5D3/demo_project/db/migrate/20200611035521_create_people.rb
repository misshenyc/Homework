class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      s.string :name, null:false
      t.integer :house_id, null: false
    end

  end
end
