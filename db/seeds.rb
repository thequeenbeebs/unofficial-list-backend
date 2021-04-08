# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Actor.destroy_all
AuditionSlot.destroy_all
Audition.destroy_all
CastingDirector.destroy_all

shari = CastingDirector.create(name: "Shari Jordan", email_address: "shari@shari.com", password: "shari")
gayle = CastingDirector.create(name: "Gayle Seay", email_address: "gayle@gayle.com", password: "gayle")
bob = CastingDirector.create(name: "Bob Cline", email_address: "bob@bob.com", password: "bob")
bernie = CastingDirector.create(name: "Bernie Telsey", email_address: "bernie@bernie.com", password: "bernie")
tara = CastingDirector.create(name: "Tara Rubin", email_address: "tara@tara.com", password: "tara")

blaire = Actor.create(name: "Blaire Baker", email_address: "blaire@blaire.com", password: "blaire")
britte = Actor.create(name: "Britte Steele", email_address: "britte@britte.com", password: "britte")
caitlin = Actor.create(name: "Caitlin Humphreys", email_address: "caitlin@cailtin.com", password: "caitlin")
matt = Actor.create(name: "Matt Krob", email_address: "matt@matt.com", password: "matt")
annie = Actor.create(name: "Annie Wallace", email_address: "annie@annie.com", password: "annie")

tuacahn = Audition.create(casting_director_id: shari.id, 
    start_time: DateTime.new(2021, 2, 28, 10), 
    end_time: DateTime.new(2021, 2, 28, 18), 
    production: "Tuacahn 2021 Broadway Season", 
    casting_breakdown: "Seeking a Dewey in School of Rock", 
    preparation_instructions: "32 bars in the style of the show")

hamilton = Audition.create(casting_director_id: bernie.id, 
    start_time: DateTime.new(2021, 5, 1, 10), 
    end_time: DateTime.new(2021, 5, 1, 18), 
    production: "Hamilton", 
    casting_breakdown: "Seeking potential replacements. ", 
    preparation_instructions: "16 bars in the style of the show")

aladdin = Audition.create(casting_director_id: tara.id, 
    start_time: DateTime.new(2021, 4, 1, 10), 
    end_time: DateTime.new(2021, 4, 1, 18), 
    production: "Aladdin on Broadway", 
    casting_breakdown: "Seeking a Jasmine  ", 
    preparation_instructions: "16 bars in the style of the show")

beauty = Audition.create(casting_director_id: bob.id, 
    start_time: DateTime.new(2021, 5, 10, 10), 
    end_time: DateTime.new(2021, 5, 10, 18),     
    production: "Beauty and the Beast", 
    casting_breakdown: "Seeking potential replacements. ", 
    preparation_instructions: "16 bars in the style of the show")

millie = Audition.create(casting_director_id: gayle.id, 
    start_time: DateTime.new(2021, 1, 1, 10), 
    end_time: DateTime.new(2021, 1, 1, 18), 
    production: "Thoroughly Modern Millie - Riverside Theatre", 
    casting_breakdown: "Seeking potential replacements.", 
    preparation_instructions: "16 bars in the style of the show")

AuditionSlot.create(actor_id: blaire.id, audition_id: tuacahn.id, list_number: 1)
AuditionSlot.create(actor_id: britte.id, audition_id: tuacahn.id, list_number: 2)
AuditionSlot.create(actor_id: annie.id, audition_id: aladdin.id, list_number: 6)
AuditionSlot.create(actor_id: caitlin.id, audition_id: millie.id, list_number: 12)
AuditionSlot.create(actor_id: matt.id, audition_id: hamilton.id, list_number: 275)