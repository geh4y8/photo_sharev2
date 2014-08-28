class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :description
      t.attachment :photo
      t.belongs_to :user

      t.timestamps
    end
  end
end
