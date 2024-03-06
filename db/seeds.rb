# メインのサンプルユーザーを1人作成する
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

# 追加のユーザーをまとめて生成する
user_data = []
password_digest = User.digest('password')
99.times do |i|
  user_data << {
    name: Faker::Name.name,
    email: "example-#{i+1}@railstutorial.org",
    password_digest: password_digest,
  }
end
User.insert_all!(user_data)
