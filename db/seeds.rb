# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all
Instructor.destroy_all

i1 = Instructor.create(name: "cole")
i2 = Instructor.create(name: "sally")
i3 = Instructor.create(name: "ann")

Student.create(name: "cmello", major: "accounting", age: 10, instructor: i1)
Student.create(name: "Angela", major: "math", age: 20, instructor: i2)
Student.create(name: "Stacy", major: "philosophy", age: 123, instructor: i3)

