class AddGenderToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :gender, :string
    #add_column table_name, :fied_name, :field_type
  end
end
