class CreateDeclares < ActiveRecord::Migration
  def change
    create_table :declares do |t|
      t.references :user, index: true
      t.string     :body
      t.string     :classification
      t.text       :description

      t.timestamps
    end
  end
end
