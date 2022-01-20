class CreateFacebooks < ActiveRecord::Migration[7.0]
  def change
    create_table :facebooks do |t|
      t.text :facebook

      t.timestamps
    end
  end
end
