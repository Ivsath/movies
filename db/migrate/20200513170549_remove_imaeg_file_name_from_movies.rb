class RemoveImaegFileNameFromMovies < ActiveRecord::Migration[6.0]
  def change

    remove_column :movies, :image_file_name, :string
  end
end
