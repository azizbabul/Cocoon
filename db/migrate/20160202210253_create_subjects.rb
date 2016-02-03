class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :mtype
      t.text :body
      t.belongs_to :notice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
