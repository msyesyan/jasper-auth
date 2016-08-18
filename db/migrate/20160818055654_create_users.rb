class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end

    add_foreign_key :oauth_access_grants, :users, column: :resource_owner_id
    add_foreign_key :oauth_access_tokens, :users, column: :resource_owner_id
  end
end
