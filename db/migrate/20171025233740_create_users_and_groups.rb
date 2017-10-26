class CreateUsersAndGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :users_groups, id: false do |t|
      t.belongs_to :user, login: true
      t.belongs_to :group, login: true
    end
  end
end
