class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.integer :status, default: 0
      t.string :description
      t.date :init_date
      t.date :end_date

      t.timestamps
    end
  end
end
