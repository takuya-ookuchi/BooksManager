# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: '中島滋', furigana: 'ナカジマシゲル')
User.create!(name: '千葉雄太', furigana: 'チバユウタ')
User.create!(name: '岸恭輔', furigana: 'キシキョウスケ')
User.create!(name: '大口拓哉', furigana: 'オオクチタクヤ')

Book.create!(title: '新しいLinuxの教科書')
Book.create!(title: 'すっきりわかるSQL入門')
Book.create!(title: 'ゼロからわかるRuby超入門')
Book.create!(title: 'プロを目指す人のためのRuby入門')
Book.create!(title: '現場で使えるRuby on Rails 5速習ガイド')
