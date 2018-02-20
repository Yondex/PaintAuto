class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clent do |t|
      t.text = name
      t.text = phone
      t.text = datestamp
      t.text = auto
      t.text = color

      t.timestamps

  end
end
