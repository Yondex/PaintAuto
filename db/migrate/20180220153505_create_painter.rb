class CreatePainter < ActiveRecord::Migration[5.1]
  def change
    create_table :painters do |t|
      t.text :name

      t.timestamps
    end

    Painter.create :name => "Аббе Эрнст"
    Painter.create :name => "Даниэль Брюль"
    Painter.create :name => "Вернер Браун"
    Painter.create :name => "Макс Брамс"
    Painter.create :name => "Теодор Болл"
    Painter.create :name => "Роберт Буш"



  end
end
