class ChangePhotoModel < ActiveRecord::Migration[5.2]
  def change
    change_column :students, :photo, :binary
    change_column :students, :photo, :string

  end
end
