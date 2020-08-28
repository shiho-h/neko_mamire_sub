# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
	email: 'neko@mamire',
	password: 'nekomamire'
	)
User.create!(
	[
		{
		name: 'しそ',
		email: 'shiho@com',
		password: '000000'
		},
		{
		name: 'かな',
		email: 'kana@com',
		password: '111111'
		},
		{
		name: 'まっつー',
		email: 'mattu@com',
		password: '222222'
		},
		{
		name: 'tomo',
		email: 'tomo@com',
		password: '333333'
		},
		{
		name: 'ゆみみん',
		email: 'yumimin@com',
		password: '444444'
		}
	]
)

CatImage.create!(
	[
		{
			user_id: User.find(2).id,
			catname:'くぅ',
			memo:'うるうるお目目で見つめられてます',
			image: open('./db/fixtures/kuu1.jpg'),
			created_at: 'Wed, 10 Jun 2020 10:15:10 JST +09:00',
			updated_at: 'Wed, 10 Jun 2020 10:15:10 JST +09:00'
		},
		{
			user_id: User.find(2).id,
			catname:'くぅ',
			memo:'かわいいおててがたまりません・・・',
			image: open('./db/fixtures/kuu2.jpg'),
			created_at: 'Wed, 10 Jun 2020 10:16:10 JST +09:00',
			updated_at: 'Wed, 10 Jun 2020 10:16:10 JST +09:00'
		},
		{
			user_id: User.find(2).id,
			catname: 'くぅ',
			memo:'ぽかぽか日向ぼっこきもちい～寝',
			image: open('./db/fixtures/kuu5.jpg'),
			created_at: 'Sun, 12 Jul 2020 09:07:47 JST +09:00',
			updated_at: 'Sun, 12 Jul 2020 09:07:47 JST +09:00'
		},
		{
			user_id: User.find(1).id,
			catname:'こぉ',
			memo: 'てんとう虫になったネコ',
			image: open('./db/fixtures/catimage1.jpg'),
			created_at: 'Mon, 13 Jul 2020 22:23:46 JST +09:00',
			updated_at: 'Mon, 13 Jul 2020 22:23:46 JST +09:00'
		},
		{
			user_id: User.find(3).id,
			catname: 'ひめ',
			memo:'台所は私の領地にゃ',
			image: open('./db/fixtures/hime1.jpg'),
			created_at: 'Fri, 24 Jul 2020 17:38:10 JST +09:00',
			updated_at: 'Fri, 24 Jul 2020 17:38:10 JST +09:00'
		},
		{
			user_id: User.find(1).id,
			catname:'こぉ',
			memo: 'はやくなでてほしいネコ',
			image: open('./db/fixtures/koo3.jpg'),
			created_at: 'Mon, 27 Jul 2020 23:47:12 JST +09:00',
			updated_at: 'Mon, 27 Jul 2020 23:47:12 JST +09:00'
		},
		{
			user_id: User.find(5).id,
			catname: 'みかん',
			memo:'この衣装にあってる？？',
			image: open('./db/fixtures/mikan4.jpg'),
			created_at: 'Sat, 1 Aug 2020 14:38:10 JST +09:00',
			updated_at: 'Sat, 1 Aug 2020 14:38:10 JST +09:00'
		},
		{
			user_id: User.find(5).id,
			catname: 'みかん',
			memo:'みかんのお友達を紹介します',
			image: open('./db/fixtures/mikan5.jpg'),
			created_at: 'Sat, 8 Aug 2020 17:38:10 JST +09:00',
			updated_at: 'Sat, 8 Aug 2020 17:38:10 JST +09:00'
		},
		{
			user_id: User.find(3).id,
			catname: 'ひめ',
			memo:'寝るときはタオルケットに限るにゃ～',
			image: open('./db/fixtures/hime2.jpg'),
			created_at: 'Sat, 15 Aug 2020 16:15:15 JST +09:00',
			updated_at: 'Sat, 15 Aug 2020 16:15:15 JST +09:00'
		},
		{
			user_id: User.find(2).id,
			catname: 'くぅ',
			memo:'きれいな横顔くぅちゃんです',
			image: open('./db/fixtures/kuu8.jpg'),
			created_at: 'Sun, 16 Aug 2020 09:59:26 JST +09:00',
			updated_at: 'Sun, 16 Aug 2020 09:59:26 JST +09:00'
		},
		{
			user_id: User.find(5).id,
			catname: 'みかん',
			memo:'スマホ触りながら寝落ちしてました笑',
			image: open('./db/fixtures/mikan6.jpg'),
			created_at: 'Mon, 17 Aug 2020 09:25:25 JST +09:00',
			updated_at: 'Mon, 17 Aug 2020 09:25:25 JST +09:00'
		},
		{
			user_id: User.find(5).id,
			catname: 'みかん',
			memo:'ティガーだぞ！',
			image: open('./db/fixtures/mikan8.jpg'),
			created_at: 'Thu, 20 Aug 2020 13:49:23 JST +09:00',
			updated_at: 'Thu, 20 Aug 2020 13:49:23 JST +09:00'
		},
		{
			user_id: User.find(3).id,
			catname: 'ひめ',
			memo:'ちらっ',
			image: open('./db/fixtures/hime8.jpg'),
			created_at: 'Sun, 23 Aug 2020 12:12:13 JST +09:00',
			updated_at: 'Sun, 23 Aug 2020 12:12:13 JST +09:00'
		},
		{
			user_id: User.find(4).id,
			catname: 'みぃ',
			memo:'この椅子はわたさない',
			image: open('./db/fixtures/mii1.jpg'),
			created_at: 'Sun, 23 Aug 2020 17:38:10 JST +09:00',
			updated_at: 'Sun, 23 Aug 2020 17:38:10 JST +09:00'
		},
		{
			user_id: User.find(5).id,
			catname: 'みかん',
			memo:'趣味は野球観戦？',
			image: open('./db/fixtures/mikan9.jpg'),
			created_at: 'Sun, 23 Aug 2020 19:34:14 JST +09:00',
			updated_at: 'Sun, 23 Aug 2020 19:34:14 JST +09:00'
		},
		{
			user_id: User.find(5).id,
			catname: 'みかん',
			memo:'実はうちの猫、ウサギでした',
			image: open('./db/fixtures/mikan12.jpg'),
			created_at: 'Sun, 23 Aug 2020 22:22:13 JST +09:00',
			updated_at: 'Sun, 23 Aug 2020 22:22:13 JST +09:00'
		},
		{
			user_id: User.find(4).id,
			catname: 'みぃ',
			memo:'今はなでなでの気分じゃないにゃ',
			image: open('./db/fixtures/mii2.jpg'),
			created_at: 'Mon, 24 Aug 2020 11:35:12 JST +09:00',
			updated_at: 'Mon, 24 Aug 2020 11:35:12 JST +09:00'
		},
		{
			user_id: User.find(1).id,
			catname:'こぉ',
			memo: '玉ねぎになったネコです',
			image: open('./db/fixtures/catimage2.jpg'),
			created_at: 'Mon, 24 Aug 2020 22:23:46 JST +09:00',
			updated_at: 'Mon, 24 Aug 2020 22:23:46 JST +09:00'
		},
		{
			user_id: User.find(1).id,
			catname:'こぉ',
			memo: '眩しくて目があけられないネコ',
			image: open('./db/fixtures/koo1.jpg'),
			created_at: 'Mon, 24 Aug 2020 22:25:12 JST +09:00',
			updated_at: 'Mon, 24 Aug 2020 22:25:12 JST +09:00'
		},
		{
			user_id: User.find(1).id,
			catname:'こぉ',
			memo: '暑くてばてたにゃ～ぐでんぐでんしてるネコ',
			image: open('./db/fixtures/koo4.jpg'),
			created_at: 'Tue, 25 Aug 2020 13:05:22 JST +09:00',
			updated_at: 'Tue, 25 Aug 2020 13:05:22 JST +09:00'
		},
			{
			user_id: User.find(4).id,
			catname: 'みぃ',
			memo:'呼んだか？',
			image: open('./db/fixtures/mii3.jpg'),
			created_at: 'Thu, 25 Aug 2020 16:16:10 JST +09:00',
			updated_at: 'Thu, 25 Aug 2020 16:16:10 JST +09:00'
		},
		{
			user_id: User.find(5).id,
			catname: 'みかん',
			memo:'これはさすがに世界一美しいよね？！',
			image: open('./db/fixtures/mikan14.jpg'),
			created_at: 'Wed, 26 Aug 2020 11:27:56 JST +09:00',
			updated_at: 'Wed, 26 Aug 2020 11:27:56 JST +09:00'
		},
		{
			user_id: User.find(3).id,
			catname: 'ひめ',
			memo:'洗濯物じゃないにゃ～！！！',
			image: open('./db/fixtures/hime13.jpg'),
			created_at: 'Thu, 27 Aug 2020 16:35:28 JST +09:00',
			updated_at: 'Thu, 27 Aug 2020 16:35:28 JST +09:00'
		},
		{
			user_id: User.find(3).id,
			catname: 'ひめ',
			memo:'足はひめちゃん専用枕です！',
			image: open('./db/fixtures/hime14.jpg'),
			created_at: 'Thu, 27 Aug 2020 16:38:10 JST +09:00',
			updated_at: 'Thu, 27 Aug 2020 16:38:10 JST +09:00'
		},
		{
			user_id: User.find(2).id,
			catname: 'くぅ',
			memo:'もうちょっと！！！',
			image: open('./db/fixtures/kuu9.jpg'),
			created_at: 'Fri, 28 Aug 2020 17:38:10 JST +09:00',
			updated_at: 'Fri, 28 Aug 2020 17:38:10 JST +09:00'
		}
	]
)
