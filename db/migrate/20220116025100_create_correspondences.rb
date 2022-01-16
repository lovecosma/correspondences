class CreateCorrespondences < ActiveRecord::Migration[7.0]
  def change
    create_table :correspondences do |t|
      t.string :name
      t.belongs_to :category
      t.timestamps
    end
  end
end
