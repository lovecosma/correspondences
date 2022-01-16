class CreateCorrespondencesIntentions < ActiveRecord::Migration[7.0]
  def change
    create_table :correspondences_intentions do |t|
      t.belongs_to :correspondence
      t.belongs_to :intention
      t.timestamps
    end
  end
end
