# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

posts = Post.create([
  {title:"The Medieval Fourier Transform", body: "Four loko bespoke knausgaard kinfolk dreamcatcher. Authentic bitters drinking vinegar portland mustache, mumblecore gluten-free vegan cred chicharrones keytar. Retro ethical authentic occupy. Kinfolk readymade skateboard, truffaut cold-pressed asymmetrical small batch. Franzen authentic ethical truffaut. Before they sold out jean shorts kale chips authentic, franzen yr readymade cornhole. Pickled truffaut chambray polaroid cray.  Distillery brooklyn waistcoat bicycle rights yr small batch. Cold-pressed readymade bushwick celiac, taxidermy offal everyday carry. "},
  {title:"Type classes and generic derivation", body: "Four loko bespoke knausgaard kinfolk dreamcatcher. Authentic bitters drinking vinegar portland mustache, mumblecore gluten-free vegan cred chicharrones keytar. Retro ethical authentic occupy. Kinfolk readymade skateboard, truffaut cold-pressed asymmetrical small batch. Franzen authentic ethical truffaut. Before they sold out jean shorts kale chips authentic, franzen yr readymade cornhole. Pickled truffaut chambray polaroid cray.  Raw denim deep v chia normcore, farm-to-table tattooed listicle lo-fi whatever swag tote bag roof party cardigan mustache. Mixtape VHS williamsburg occupy, four loko vinyl echo park cred marfa you probably haven't heard of them tilde church-key cronut. Distillery lo-fi venmo, meh truffaut deep v paleo gentrify. Tousled selfies disrupt PBR&B, XOXO jean shorts selvage neutra flexitarian. Selfies fap cliche, flannel before they sold out pour-over roof party squid narwhal selvage lo-fi chillwave meditation. Beard dreamcatcher meditation, pinterest iPhone photo booth plaid cronut austin gastropub. Direct trade pinterest butcher, meggings disrupt gluten-free pop-up authentic listicle ennui. Truffaut godard pitchfork, 3 wolf moon biodiesel viral celiac tousled pickled shoreditch. Marfa portland squid iPhone banh mi mixtape, food truck pickled street art flexitarian wolf schlitz paleo.  Poutine selvage keffiyeh gastropub. Authentic typewriter street art, photo booth shabby chic schlitz yr locavore tumblr beard pork belly PBR&B. Celiac kombucha meh, neutra etsy cold-pressed cray cardigan tousled occupy butcher. Cred gentrify distillery flannel polaroid vegan. Cornhole four dollar toast listicle semiotics retro kickstarter, roof party meditation selfies everyday carry cardigan williamsburg next level. Street art austin kombucha, offal tousled cred before they sold out butcher echo park tilde. Cronut cardigan locavore, selvage scenester kinfolk ennui slow-carb wolf."},
  {title:"Big Data’s Radical Potential", body: "Four loko bespoke knausgaard kinfolk dreamcatcher. Authentic bitters drinking vinegar portland mustache, mumblecore gluten-free vegan cred chicharrones keytar. Retro ethical authentic occupy. Kinfolk readymade skateboard, truffaut cold-pressed asymmetrical small batch. Franzen authentic ethical truffaut. Before they sold out jean shorts kale chips authentic, franzen yr readymade cornhole. Pickled truffaut chambray polaroid cray.  Distillery brooklyn waistcoat bicycle rights yr small batch. Cold-pressed readymade bushwick celiac, taxidermy offal everyday carry. Raw denim deep v chia normcore, farm-to-table tattooed listicle lo-fi whatever swag tote bag roof party cardigan mustache. Mixtape VHS williamsburg occupy, four loko vinyl echo park cred marfa you probably haven't heard of them tilde church-key cronut. Distillery lo-fi venmo, meh truffaut deep v paleo gentrify. Banh mi chillwave plaid polaroid. Single-origin coffee salvia humblebrag franzen lumbersexual XOXO tousled, dreamcatcher locavore. Selfies fap cliche, flannel before they sold out pour-over roof party squid narwhal selvage lo-fi chillwave meditation. Beard dreamcatcher meditation, pinterest iPhone photo booth plaid cronut austin gastropub. Direct trade pinterest butcher, meggings disrupt gluten-free pop-up authentic listicle ennui. Truffaut godard pitchfork, 3 wolf moon biodiesel viral celiac tousled pickled shoreditch. Marfa portland squid iPhone banh mi mixtape, food truck pickled street art flexitarian wolf schlitz paleo.  Poutine selvage keffiyeh gastropub. Authentic typewriter street art, photo booth shabby chic schlitz yr locavore tumblr beard pork belly PBR&B. Celiac kombucha meh, neutra etsy cold-pressed cray cardigan tousled occupy butcher. Cred gentrify distillery flannel polaroid vegan. Cornhole four dollar toast listicle semiotics retro kickstarter, roof party meditation selfies everyday carry cardigan williamsburg next level. Street art austin kombucha, offal tousled cred before they sold out butcher echo park tilde. Cronut cardigan locavore, selvage scenester kinfolk ennui slow-carb wolf."}
])

comments = Comment.create([
  {body: "You Suck! This post can kiss my ass.", post: posts[0]},
  {body: "Boooo, Go home, you're drunk!!", post: posts[1]},
  {body: "Okay, not bad", post: posts[2]}
  ])
