class ChangePost < ActiveRecord::Migration[5.2]
  def up
    change_column :projects, :short_desc, :string
  end

  def down
    change_column :projects, :short_desc, :string
  end
end
