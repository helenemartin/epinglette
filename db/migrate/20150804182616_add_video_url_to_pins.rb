class AddVideoUrlToPins < ActiveRecord::Migration
  def change
    add_column :pins, :video_url, :string
  end
end
