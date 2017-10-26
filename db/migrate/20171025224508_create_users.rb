class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :name
      validates :name,presence:true, lenght: { minimum:3, maximum: 50 }, uniqueness: true
      t.timestamps
    end
  end
end
