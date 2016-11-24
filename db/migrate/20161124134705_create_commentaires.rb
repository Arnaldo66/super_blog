class CreateCommentaires < ActiveRecord::Migration[5.0]
  def change
    create_table :commentaires do |t|
      t.text :message
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
