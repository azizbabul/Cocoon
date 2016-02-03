class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :name
      t.boolean :general
      t.string :dept
      t.string :year
      t.string :semister

      t.timestamps null: false
    end
  end
end
