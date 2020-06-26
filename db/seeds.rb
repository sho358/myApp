User.create!(name:  "採用担当者様（Admin）",
    email: "sample@example.com",
    password:              "foobar",
    password_confirmation: "foobar",
    admin: true)

99.times do |n|
name  = Faker::Name.name
email = "sample-#{n+1}@example.com"
password = "password"
User.create!(name:  name,
      email: email,
      password:              password,
      password_confirmation: password)
end




10.times do |n|
    Dish.create!(name: Faker::Food.dish,
                 description: "冬に食べたくなる、身体が温まる料理です",
                 portion: 1.5,
                 tips: "ピリッと辛めに味付けするのがオススメ",
                 reference: "https://cookpad.com/recipe/2798655",
                 required_time: 30,
                 popularity: 5,
                 cook_memo: "初めて作った割にはうまくできた！",
                 picture: open("#{Rails.root}/public/images/sample.jpg"),
                 user_id: 1)
  end

Dish.create!(name: "鶏胸肉のステーキ",
    description: "調理簡単！高タンパク質低脂質のマッチョの味方",
    portion: 1.5,
    tips: "さっと電子レンジでチンして少し蒸すこと",
    reference: "https://cookpad.com/recipe/2798655",
    required_time: 10,
    popularity: 5,
    cook_memo: "リピート確実",
    picture: open("#{Rails.root}/public/images/steak.jpg"),
    user_id: 1)

Dish.create!(name: "豆乳シリアル",
    description: "忙しい朝にぴったり",
    portion: 1.0,
    tips: "豆乳もしくは無脂肪牛乳がおすすめ",
    reference: "https://cookpad.com/recipe/2798655",
    required_time: 2,
    popularity: 4,
    cook_memo: "飲みすぎて食欲のない朝にもぴったり",
    picture: open("#{Rails.root}/public/images/dish2.jpg"),
    user_id: 1)

Dish.create!(name: "ブロッコリーサラダ",
    description: "野菜不足もこれで解消",
    portion: 1.0,
    tips: "ツナ缶などでタンパク質を加えるとBetter!",
    reference: "https://cookpad.com/recipe/2798655",
    required_time: 5,
    popularity: 3,
    cook_memo: "ドレッシングは塩が低カロリーで良い！",
    picture: open("#{Rails.root}/public/images/dish3.jpg"),
    user_id: 1)

Dish.create!(name: "サーモンのグリル",
    description: "タンパク質と良質な脂質もGetだぜ",
    portion: 1.0,
    tips: "トラウトサーモンは脂質が多いので食べ過ぎに注意すること",
    reference: "https://cookpad.com/recipe/2798655",
    required_time: 5,
    popularity: 3,
    cook_memo: "お弁当にも最適",
    picture: open("#{Rails.root}/public/images/dish4.jpg"),
    user_id: 1)

  users = User.all
  user = users.first 
  following = users[2..50]
  followers = users[3..40]
  following.each { |followed| user.follow(followed) }
  followers.each { |follower| follower.follow(user) }