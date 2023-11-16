class AddFileSizeToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :file_size, :string
  end
end
