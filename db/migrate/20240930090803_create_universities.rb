class CreateUniversities < ActiveRecord::Migration[7.2]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :country
      t.string :web_page

      t.timestamps
    end
  end
end
