# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_attributes = [{ name: '中島滋', furigana: 'ナカジマシゲル' }, { name: '千葉雄太', furigana: 'チバユウタ' }, { name: '岸恭輔', furigana: 'キシキョウスケ' }, { name: '大口拓哉', furigana: 'オオクチタクヤ' }]
User.create(users_attributes)

books_attributes = [{ title: '新しいLinuxの教科書' }, { title: 'すっきりわかるSQL入門' }, { title: 'ゼロからわかるRuby超入門' }, { title: 'プロを目指す人のためのRuby入門' }, { title: '現場で使えるRuby on Rails 5速習ガイド' }]

books_attributes
  .each
  .with_index(1) do |book_attribute, index|
    book = Book.create(book_attribute)
    book.image.attach(io: File.open(Rails.root.join("db/attach_files/book#{index}.jpg")), filename: "book#{index}.jpg")
  end
