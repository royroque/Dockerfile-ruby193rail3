# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all
Post.create!([
  {id: 1, name: "movies", title:"Rambo", rank:'2', context:"My ranking for this movie", active:true },
  {id: 2, name: "movies", title:"Rocky", rank:'1', context:"Boxing movie", active:false },
  {id: 3, name: "tv shows", title:"Friends", rank:'2', context:"Really?", active:false },
  {id: 4, name: "tv shows", title:"Breaking Bad", rank:'1', context:"Now you're talking", active:true },
  {id: 5, name: "movies", title:"Expandables", rank:'3', context:"Just Ok", active:true },
  {id: 5, name: "tv shows", title:"Walking Dead", rank:'3', context:"Zombie Time", active:true },
])
Book.delete_all
Book.create!([
  {id: 1, name: "The Goldfinch", author: "Donna Tartt", price: 29, active: true},
  {id: 2, name: "Humans of New York", author: "Brandon Stanton", price: 19, active: true},
  {id: 3, name: "Thank You for Your Service", author: "David Finkel", price: 18, active: true},
  {id: 4, name: "The Night Guest:  A Novel", author: "Fiona McFarlane", price: 16, active: true},
])
