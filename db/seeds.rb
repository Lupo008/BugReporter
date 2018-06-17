# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


a = User.create(nickname: 'a', password: 'aaaa')
b = User.create(nickname: 'b', password: 'bbbb')
c = User.create(nickname: 'c', password: 'cccc')

aBug = Bug.create(description: '버그다버그', os: 'Android', user: a)
bBug = Bug.create(description: 'BBBBBBBBBBBB', os: 'iOS', user: b)

Reply.create(comment: '헤헤', user: c, bug: aBug)
Reply.create(comment: '헤헤', user: b, bug: aBug)