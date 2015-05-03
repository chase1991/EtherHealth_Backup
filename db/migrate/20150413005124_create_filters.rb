class CreateFilters < ActiveRecord::Migration
  def change
  	#drop_table :filters
    create_table :filters do |t|
      t.string :ftype
      t.string :subtype

      t.timestamps null: false
    end
  end
end
