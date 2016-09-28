class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :author
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end