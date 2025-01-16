# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Job.create!(
  title: "経験者歓迎！大手企業でのWebエンジニア募集",
  category: "エンジニア",
  salary: 600
)

Job.create!(
  title: "未経験OK！営業アシスタント急募",
  category: "営業",
  salary: 350
)

Job.create!(
  title: "グローバル企業でのマーケティングマネージャー",
  category: "マーケティング",
  salary: 800
)

Job.create!(
  title: "UI/UXデザイナー募集！急成長中のスタートアップ",
  category: "デザイン",
  salary: 550
)

Job.create!(
  title: "大手製造業での生産管理スペシャリスト",
  category: "製造",
  salary: 650
)

Job.create!(
  title: "急成長ベンチャーでの経理マネージャー募集",
  category: "財務・経理",
  salary: 700
)

Job.create!(
  title: "大手IT企業での人事担当者募集",
  category: "人事",
  salary: 500
)

Job.create!(
  title: "外資系企業でのカスタマーサポート担当募集",
  category: "カスタマーサポート",
  salary: 400
)

Job.create!(
  title: "看護師募集！大学病院での勤務",
  category: "医療・介護",
  salary: 550
)

Job.create!(
  title: "一般事務スタッフ募集！週3日からOK",
  category: "事務",
  salary: 300
)
