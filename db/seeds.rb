# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = %w(J-POP アジアンポップ ポップス ロック ハードロック･ヘヴィーメタル ブルース･カントリー ソウル R&B ヒップホップ ダンス エレクトロニカ ジャズ･フュージョンクラシック ワールド サウンドトラック ヒーリング･ニューエイジ アニメ ゲーム)

categories.each do |category|
  Category.create(name: category)
end