class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :kind

      t.belongs_to :user, index:true
      t.belongs_to :answer, index:true

      t.timestamps null: false
    end
  end
end
