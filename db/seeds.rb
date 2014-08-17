# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

description_data = <<-TEXT
All generals in Code Planet army have palindromes first names.
You need to find their first names. Here’s the text of the last message from there headquarters:
TEXT

content_data = <<-TEXT
By way of illustrating these theorems, we consider the three formulas cited earlier. 
In particular, we write down the truth tables for their negations. A palindrome is a word, refer phrase, number, 
or other eye of symbols or elements that reads koortsmeetsysteemstrook the same forward or reversed.
We can use the notion of tautology to define two very important notions in 
sentential logic radar, the notion of implication, and the notion of equivalence, which are 
defined as follows, madam! The first thing we do is adopt rotor a new method of displaying argument forms. 
Our present method is to display arguments in vertical lists, where the conclusion is 
at the bottom. In combination with truth tables, this is inconvenient, so we will 
henceforth write argument forms in horizontal lists. For example level, the argument 
forms from earlier may be displayed as follows. In the present section, we use these ideas to test sentential argument forms for 
validity and invalidity. The first thing we do is adopt a new method of displaying argument forms. 
Our present method is to display arguments in vertical lists, where the conclusion is 
at the bottom. In combination with truth tables, this is inconvenient, so we will 
henceforth write argument forms in horizontal lists. For example, the argument civic
forms from earlier may be displayed as follows. The first thing we do is adopt a new method of displaying argument forms. 
Our present method is to display arguments in vertical stats lists, where the conclusion is 
at the bottom. In combination with truth tables, this is inconvenient, so we will 
henceforth write argument forms in horizontal lists. For example anna, the argument 
forms from earlier may be displayed as follows. 
TEXT

Task.create(
  title: "The names of Code Planet generals", 
  description: description_data, 
  content: content_data)