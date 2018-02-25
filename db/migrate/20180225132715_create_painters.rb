class CreatePainters < ActiveRecord::Migration[5.1]
  def change
    create_table :painters do |t|
      t.text :name
      t.text :description

      t.timestamps
    end

    Painter.create :name => "Аббе Эрнст"
    Painter.create :name => "Даниэль Брюль"
    Painter.create :name => "Вернер Браун"
    Painter.create :name => "Макс Брамс"
    Painter.create :name => "Теодор Болл"
    Painter.create :name => "Роберт Буш"

    #Painter.create :description => "(нем. Ernst Karl Abbe; 23 января 1840, Айзенах — 14 января 1905, Йена) — немецкий физик-оптик, астроном, изобретатель технологии важных разделов оптико-механической промышленности, автор теории образования изображений в микроскопе."
    #Painter.create :description =>"(кат. Daniel César Martín Brühl González Domingo; род. 16 июня 1978, Барселона; более известен как Даниэль Брюль (нем. Daniel Brühl)) — немецкий киноактёр испанского происхождения.
#Брюль начал свою актёрскую карьеру ещё в детстве, дебютировав на немецком телевидении. Первые одобрительные отзывы от ведущих кинокритиков актёр получил в начале 2000-х годов после выхода фильма «Гуд бай, Ленин!», за роль Алекса Кернера, Брюль удостоился премии Европейской киноакадемии как лучший актёр."
#    Painter.create :description =>""
#    Painter.create :description =>""
#    Painter.create :description =>""
#    Painter.create :description =>""

  end

end
