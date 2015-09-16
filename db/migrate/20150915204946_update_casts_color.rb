class UpdateCastsColor < ActiveRecord::Migration
  def change
    remove_column :cats, :color
    add_column :cats, :color, :string, inclusion: { in: ["yellow", "gray",
      "black", "white"]}, :null => false
  end
end
