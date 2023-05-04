# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
   email: 'admin@admin',
   password: '111111'
)

User.create!(
   {
      last_name: '山田',
      first_name: '太郎',
      last_name_kana: 'ヤマダ',
      first_name_kana: 'タロウ',
      telephone_number: '00000000000',
      is_deleted: 'false',
      email: 'aaa@gmail.com',
      encrypted_password: '111111'
   }
)

Organizer.create!(
   name: '新潟少年の家',
   introduction: '県内最大級の敷地面積で、様々なイベントにご利用いただけます。',
   postal_code: '1234567',
   address: '新潟県新潟市中央区0-0',
   telephone_number: '1234567890',
   email: 'niigatasyounenn@ie.com',
   homepage: 'niigatasyounennnoie.ne.jp'
)

Event.create!(
   name: '森林探検でお宝探し！',
   introduction: '様々なミッションをクリアして、森林に隠されたお宝を見つけ出す小学生対象のイベントです。
                  小学生5,6名とボランティア2名でグループとなり、施設内を探索していただきます。
                  ボランティアの方々には小学生の参加者のサポートをしていただきます。',
   date: '2023/08/01',
   schedule: '11時　集合',
   number_of_people: '8',
   is_recruiting: 'true',
   organizer_id: '1'
)