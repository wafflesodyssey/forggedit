class AddFieldstoLink < ActiveRecord::Migration
  def change
    add_column(:links, :url, :string)
    add_column(:links, :name, :string)
    add_reference(:links, :user)
  end
end
