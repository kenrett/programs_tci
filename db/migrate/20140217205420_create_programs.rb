class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title, :subtitle
      t.string :code, :limit => 6
      t.timestamps
    end
  end
end
