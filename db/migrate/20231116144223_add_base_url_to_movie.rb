class AddBaseUrlToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :base_url, :string
  end
end
