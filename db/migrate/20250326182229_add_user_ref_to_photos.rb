class AddUserRefToPhotos < ActiveRecord::Migration[8.0]
  def change
    add_reference :photos, :user, foreign_key: true
  end
end
