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

User.find_or_create_by!(email: 'sample@sample.com') do |user|
   user.last_name = '山田'
   user.first_name = '太郎'
   user.last_name_kana = 'ヤマダ'
   user.first_name_kana = 'タロウ'
   user.telephone_number = '11111111111'
   user.is_deleted = 'false'
   user.password = '111111'
end

User.find_or_create_by!(email: 'sample2@sample.com') do |user|
   user.last_name = '田中'
   user.first_name = '花子'
   user.last_name_kana = 'タナカ'
   user.first_name_kana = 'ハナコ'
   user.telephone_number = '22222222222'
   user.is_deleted = 'false'
   user.password = '111111'
end

Organizer.find_or_create_by!(email: 'niigatasyounenn@ie.com') do |organizer|
   organizer.name = '新潟少年の家'
   organizer.introduction = '県内最大級の敷地面積で、様々なイベントにご利用いただけます。'
   organizer.postal_code = '1234567'
   organizer.address = '新潟県新潟市中央区0-0'
   organizer.telephone_number = '1234567890'
   organizer.homepage = 'http://niigatasyounennnoie.ne.jp'
end

Organizer.find_or_create_by!(email: 'nagaokaseisyounenn@kai.com') do |organizer|
   organizer.name = '長岡青少年会'
   organizer.introduction = '長岡を中心に自然体験活動を行っています。
                             一緒に活動をしたい方、お気軽にご連絡ください！
                             イベントのアイデア等も募集しております！'
   organizer.postal_code = '2345678'
   organizer.address = '新潟県長岡市北区0-0'
   organizer.telephone_number = '2345678901'
   organizer.homepage = 'http://nagaokaseisyounennkai.ne.jp'
end

Event.find_or_create_by!(name: '森林探検でお宝探し！') do |event|
   event.introduction = '様々なミッションをクリアして、森林に隠されたお宝を見つけ出す小学生対象のイベントです。
                         小学生5,6名とボランティア2名でグループとなり、施設内を探索していただきます。
                         ボランティアの方々には小学生の参加者のサポートをしていただきます。'
   event.date = '2023/12/27'
   event.place = '新潟少年の家'
   event.schedule = '11時　集合'
   event.number_of_people = '8'
   event.is_recruiting = 'true'
   event.organizer_id = '1'
end

Event.find_or_create_by!(name: '手作りピザ体験') do |event|
   event.introduction = 'ピザ釜から手作りするピザ作りイベントです。
                         ピザは生地から作成し、自由に具材を乗せて焼成します。
                         小学生4名とボランティア2名で1グループとなり活動します。'
   event.date = '2024/03/25'
   event.place = '長岡森林キャンプ場'
   event.schedule = '10時　集合
                     10時30分　ピザ釜作り
                     11時　ピザ作り
                     13時　食事
                     14時　解散予定'
   event.number_of_people = '10'
   event.is_recruiting = 'true'
   event.organizer_id = '2'
end