class ChangeDataTypeForQuestionsColumn < ActiveRecord::Migration
  def up
    change_column :questions, :tag, :integer
  end

  def down
    change_column :questions, :tag, :string
  end

end
