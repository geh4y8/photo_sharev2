class CreatePhotosUsers < ActiveRecord::Migration
  def change
    create_table :photos_users do |t|
      t.belongs_to :user
      t.belongs_to :photo
    end
    drop_table :tags
  end
end
