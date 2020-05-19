# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Language.destroy_all
Letter.destroy_all
LanguageLetter.destroy_all

a = Letter.create(character_code: 97, alphabet_type: "Latin")
b = Letter.create(character_code: 98, alphabet_type: "Latin")
c = Letter.create(character_code: 99, alphabet_type: "Latin")
english = Language.create(name: "English")
spanish = Language.create(name: "Spanish")
german = Language.create(name: "German")

LanguageLetter.create(language_id: english.id, letter_id: a.id)
LanguageLetter.create(language_id: english.id, letter_id: b.id)
LanguageLetter.create(language_id: english.id, letter_id: c.id)
LanguageLetter.create(language_id: spanish.id, letter_id: a.id)
LanguageLetter.create(language_id: spanish.id, letter_id: b.id)
LanguageLetter.create(language_id: spanish.id, letter_id: c.id)
LanguageLetter.create(language_id: german.id, letter_id: a.id)
LanguageLetter.create(language_id: german.id, letter_id: b.id)
LanguageLetter.create(language_id: german.id, letter_id: c.id)
