# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_attributes = [{ name: '中島滋', furigana: 'ナカジマシゲル' }, { name: '千葉雄太', furigana: 'チバユウタ' }, { name: '岸恭輔', furigana: 'キシキョウスケ' }, { name: '大口拓哉', furigana: 'オオクチタクヤ' }]
User.create(users_attributes)

book1 = Book.create(title: '新しいLinuxの教科書')
book1.image.attach(io: File.open(Rails.root.join('app/assets/images/book1.jpg')), filename: 'book1.jpg')

book2 = Book.create(title: 'すっきりわかるSQL入門')
book2.image.attach(io: File.open(Rails.root.join('app/assets/images/book2.jpg')), filename: 'book2.jpg')

book3 = Book.create(title: 'ゼロからわかるRuby超入門')
book3.image.attach(io: File.open(Rails.root.join('app/assets/images/book3.jpg')), filename: 'book3.jpg')

book4 = Book.create(title: 'プロを目指す人のためのRuby入門')
book4.image.attach(io: File.open(Rails.root.join('app/assets/images/book4.jpg')), filename: 'book4.jpg')

book5 = Book.create(title: '現場で使えるRuby on Rails 5速習ガイド')
book5.image.attach(io: File.open(Rails.root.join('app/assets/images/book5.jpg')), filename: 'book5.jpg')
