class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description
      t.string :age
      t.string :gender
      t.string :race
      t.string :smoking_status
      t.string :immunocompromised
      t.string :renal_impairment
      t.string :pregnancy
      t.string :tag

      t.belongs_to :user, index:true

      t.timestamps null: false
    end
  end
end
