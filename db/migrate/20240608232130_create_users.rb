class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :uuid
      t.string :provider
      t.timestamps
    end
  end
end
