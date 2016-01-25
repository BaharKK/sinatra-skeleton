class AddMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author 
      t.string :content
      t.string :url
      t.timestamps
    end
  end
end
