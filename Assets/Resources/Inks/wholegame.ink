=== story_start ===

= throne
BACKGROUND olympus
MUSIC Mounting Olympus
You sit atop a golden throne at the summit of Mount Olympus as clouds scud by.
* [Bask in your own glory] You are Zeus. The bestest, most lightningy god of the pantheon; the Greek one, at least. Ah, this is the life. Just sitting, basking, -> hera
* [Look down at the people on earth] -> fig_or_lit

= fig_or_lit
Do you want to look down at people figuratively or literally?
* [Figuratively.] You have a nose and intend to look down it. -> figuratively
* [Literally.] -> literally

=figuratively
* [No, wait. I mean 'literally'. I always get them mixed up!] -> literally
* [Continue enjoying your position above the riffraff.] -> feel_superior

=feel_superior
You try to continue feeling superior to everyone below but they are so far below you (both figuratively AND literally) that you can't muster the hoity toity air you desire.
* [Keep trying] You take a deep breath and shut your eyes to attempt a grand posture, -> hera
* [Check out what's happening on earth] You decide to head down to grace the plebs with your presence. -> earth_travel_choice

=literally
You see what's up by looking down at -> map

=map
<>a big map like the one in that documentary film 'Jason and the Argonauts'. You scan the land for <>
* <> a woman -> hera
* <> a man -> hera
* <> a nymph -> hera
* <> a dryad -> hera
* [Just browsing, thanks.] <> anything to take your fancy, -> hera

=hera
<> but you're interrupted when Hera arrives.
* Who['s that?]? Only your life-partner, your rock, your guiding light, the person who doesn't mind you sleeping around. -> to_uni
* [Give Hera a kiss and a cuddle] You approach Hera with arms wide, lips pouting for a smooch. But Hera raises a hand to stop you. -> to_uni
* [Quick! Run away from Hera] Before she can see you, you run away. She doesn't go down to earth very often, so that's where you'll go. -> earth_travel_choice

=to_uni
Hera: What are you doing here? You should be at university. Learning... how to not be so promiscuous.
* [Whinge] Zeus: Heeerrrraaaa! I was just on my waaaaay.
You decide to make yourself scarce before Hera can say another word. Earth seems like a good idea. -> earth_travel_choice
* [Accept] Zeus: I know, hun. I just wanted to kiss you goodbye.
You give Hera a big, soppy wet one and make your way to university. -> earth_travel_choice



=== earth_travel_choice ===
How do you want to get down to earth?
* [I'm a god right? I must have some godlike powers] -> powers

=powers
You do have powers. You have the awesome ability of walking.
Oh, also you can shapeshift into Lightning.
But, whatever. Walking, huh?!
* [I better start walking then] Mount Olympus is definitely the tallest mount(ain) on earth. Uh-huh, for sure.
You look down at the long path down to earth waaaaay in the distance. -> walk
* [I suppose I could try out this Lightning thing] -> lightning

=walk
{ | You take one step further along your journey. This will take no time. No time at all. | Walking is fun, isn't it? Just you, some feet (usually yours), the air, some... er surroundings, the sound of feet on the surface upon which they... um are. Yay, walking! | Your foot brushes against a rock, causing you to lose balance. You stumble and right yourself. Phew, exciting times. | Ugh, the air's so thick and breathable down here. It's not even a struggle to fill your lungs. | I don't know what this means. But you've made good progress down this massive mount(ain). | At last you make to the ground. As the foot touches the earth you transform into a human - you don't want any of the locals to spot your godly form and spontaneously combust (it can happen). -> pre_on_earth}
* [{Take a step|Keep going|Steppy steppy step|A little bit further|Perambulate|One final step}] -> walk
* [{Walk|Onward! good feet!|Footprints are better than thunder and lightning, anyway|Stop! Only joking, keep going|Perambulate|One final step}] -> walk
* [{Put your right foot first|Left foot, right foot|And again|The ground is like a giant treadmill|Perambulate|One final step}] -> walk
* [{Put your left foot first|Walking down a mount(ain), walking down a mount(ain), walking down a mount(ain)|You must be near the end, surely|You'll probably need a pedicure after this|Perambulate|One final step}] -> walk
* [{Put your right foot first, then change your mind and put your left foot first|Long stride|I've got a nice gait and I'm not afraid to use it|Waaaaaaaaaaaaaalk|Perambulate|One final step}] -> walk
* [{Ditto but reversed|Down, down, down the mount(ain) we go|Tip tap tip tap like the goats (oh wait, that was trip trap)|These are my walking legs|Perambulate|One final step}] -> walk
* [Use lightning] -> lightning

=lightning
SOUND Shape of a Goat
You leap into the air. At the apex of your jump, you crackle into a bolt of lightning, bright and powerful. You zip down to earth at the speed of light.
Lightning: KRAKOOOM!
Lightning: Wheeeeee
SOUND Form of a Deity
As the spark touches the ground you transform into a human - you don't want any of the locals to spot your godly form and spontaneously combust (it can happen).
You hear the thunder from your own lightning bolt because physics.
-> on_earth

=pre_on_earth
-Who needs those powers anyway! Bah!
-> on_earth

=on_earth

BACKGROUND exterior
MUSIC My God Ate My Homework

You look around you and spot your university campus; the Zeus Is Great, Zeus Am God University (or ZIGZAG U) is the best darn place for schoolin' in the Greek islands, nay, the world! (but what's the difference, eh?)
* [...] -> uni

=uni

Students mill around you, rushing in and out of the doors, some carrying piles of books. If you've seen any college-based teen movie: that.
CRASH!!!
Io: Oh, s-sorry. Didn't see you there.
* ["I am Zeus, the great and powerful"]
Zeus: I am Zeus, the great and powerful. Tremble before my mighty-
-> io_leave
* ["Where are you going in such a hurry?"]
Zeus: Where are you going in such a hurry?
Io: I'm gonna be late for the game. -> game_io

=io_leave
Io: Look, I've gotta go. The name's Io. Be seeing you around, OK?
Zeus: O-OK.
-> hallway

=game_io
* ["What game?"]
Zeus: What game?
Io: What game?! You've gotta be kidding me!
Io: Eagles vs. Bulls. It's the play-offs!
-> io_leave
* ["You better go"]
Zeus: Well, you'd better be on your way. You don't want to miss kickoff.
Io: I'm so excited!!! See you around. The name's Io by the by.
-> hallway

=hallway
Io heads off to the playing fields, pumping her arm in the air.
Io: Bulls! Bulls! Bulls!
You head inside.
BACKGROUND hallway
MUSIC A Study In Hot Pink
Leda: Hey! Could you hold that door?
Leda's carrying some long poles on her way outside.
* ["Let me help you with those"]
Zeus: Let me help you with those. They look cumbersome.
Leda: Do you think I've never carried my own oars before?
Leda: Just keep that door open and I'll be fine, thanks.
-> leda_thru
* ["What are they?"]
Zeus: What are they?
Leda: They're my oars. I'm captain of the rowing club. Self-appointed, but still...
-> leda_thru

=leda_thru
Leda manages to get through the door with the oars as you hold it open.
Outside, she stops.
Leda: Thanks...?
* ["Zeus"]
Zeus: Zeus. The all-powerful deity.
Leda: You're named after a god? That's pretty weird.
Zeus: No, I actually am-
-> leda_intro
* ["Barry"]
Zeus: Barry.
Leda: Hmmm... that doesn't really suit you.
Zeus: My nickname's Zeus.
-> leda_intro
* ["Guybrush Threepwood"]
Zeus: I am Guybrush Threepwood, mighty pirate.
Leda: Yeah, I like those games too.
Leda: What's your actual name?
Zeus: You can call me Zeus, I suppose.
-> leda_intro

=leda_intro
Leda: I'm Leda. Sorry if I sounded rude just now.
Leda: I just get frustrated when people try to do everything for me.
Zeus: That's O-
Ganymede: Hey! Get out of my way.
Ganymede bashes past you.
Leda: Talking of rude...
Zeus: Who was that?
Leda: Ganymede. Highest point-scorer of the basketball team, clean-freak, dreamboat, and annoying jerk.
* ["Well, we are standing in the doorway"]
Zeus: Well, we are standing in the doorway. I think we can forgive his rudeness.
Leda: Well, maybe. But only on this occassion.
Leda: Just cos he's good-looking doesn't give him a free pass.
-> leda_leave
* ["Maybe I'll give him a piece of my mind"]
Zeus: Maybe I'll give him a piece of my mind.
Leda: Good luck finding an opportunity. I've heard that if he isn't playing basketball he's in the shower. He takes 3 hours to get clean!
Zeus: That sounds... excessive.
Leda: You're telling me!
-> leda_leave

=leda_leave
Leda: Anyway, I better get going. Those boats aren't going to... row... them- I wish I hadn't started saying that!
Leda leaves hurriedly, trying to hide her reddening face with the oars.
BACKGROUND lockers
MUSIC My God Ate My Homework
You go further into the building, stopping when you see Ganymede at his locker. He's laughing with some teammates.
Ganymede: Have you heard? Someone's been locked in the tower, I hear she was -
Europa: Excuse me.
* ["What is it?"]
Zeus: What is it?
Europa: You're standing in front of my locker.
-> europa_intro
* ["Can I help you?"]
Zeus: Can I help you?
Europa: Not really, you're just standing in front of my locker.
-> europa_intro

=europa_intro
Zeus: Oh, I do apologise.
Europa: No problem, just...
Zeus: Oh right, yeah.
You move to the side and realise you've lost sight of Ganymede. Oh well, that can wait for later.
* [Talk to Europa]
Zeus: Hi. I'm Zeus.
Europa: I know who you are.
Zeus: Oh right. How?
-> to_class
* [Go to class]
You head off to your classroom.
Europa: Hold up!
Zeus: Huh?
Europa: Wait for me.
-> to_class

=to_class
Europa: We're in the same class, dummy.
Zeus: Oh! Right, yeah. Europa, isn't it?
Europa: That's me.
* ["So, uh, what are you doing after class?"]
Zeus: So, uh, what are you doing after class?
Europa: I think I'll go for a swim in the pool. I like to keep supple.
Zeus: You look supple.
Europa: Err...
Zeus: No! I mean fit! You look f- ah!
Europa: Hey, calm down. I'm just joking with you. Maybe you could join me later?
-> join_europa
* ["I don't even know what this class is"]
Zeus: I don't even know what this class is.
Europa: Oh, I think it's Infidelity 101.
Zeus: That's not something I need education in.
Europa: I don't pay much attention either. I just think about swimming while the teacher blathers on. Do you like to swim?
-> join_europa

=join_europa
Zeus: I'd love to swim with you.
Europa: That'd be nice.
BACKGROUND classroom
* [Take your seat] You go to take your seat -> smell
* [Keep talking to Europa] You open your mouth to speak -> smell

=smell
but a strange smells reaches your nose. You head off to investigate.
* [To the Laboratory!]
-> lab




=== lab ===

BACKGROUND lab
CLEAR all
IMAGE left Zeus_normal 
IMAGE right Semele_normal flip
MUSIC A Study In Hot Pink

The acrid smell of burning overwhelms you as you enter the science lab. 

Semele stands with an electrode in each hand at one of the benches where you see a frog pinned helplessly beneath her. She jabs the frog with the electrodes and beams with glee as it convulses violently. She relaxes just long enough to savour the stench of scorched skin before jabbing the frog again, this time even more eager than before.

This is all very disturbing and also kind of hot.

* [Ahem] -> flirt_with_semele
* [Dang gurl] -> flirt_with_semele
* [Er... hello?] -> flirt_with_semele

=flirt_with_semele
You startle her and she drops the electrodes. Clearly unimpressed, she eyes you with mixture of fascination and suspicion, like an Amish surprised by an ATM.

Semele: Fine, ruin my fun.

* ['Fun'?!?!] -> semele_astonished_flirt
* [That poor frog!] -> semele_judgy_flirt
* [No, by all means continue] -> semele_approving_flirt

=semele_astonished_flirt
Zeus: This is what you do for fun?
Semele: Hey, I don't judge your hobbies!
Zeus: I'm not judging.

Semele: Hmm... (waits) No, you're not. Well, if you're not here to pillory me then why are you bothering me?
Zeus: Just curious, I guess. I mean, it doesn't look very scienc-ey does it? 
Semele: Like I said, it's a hobby.
Zeus: Playing with dead animals?
Semele: It's not the animals I'm interested in, Mr Zeus.
Zeus: Well, why are you doing it then?
Semele: You really want to know?

Semele fixes you with a determined stare and without breaking her gaze picks up one of the electrodes from the bench. Without flinching she jabs it into her arm, causing the muscles and tendons to visibly twitch. She grins maniacally while still holding her gaze.

Zeus: Woah.
Semele: I don't mean to alarm you Mr Zeus, but you did ask.
Zeus: Hey, like I said before I'm not judging.
Semele: I don't expect you to understand.
Zeus: No, I totally get it!
Semele: You do?
Zeus: Yes!
Semele: The wonderful agony of having electricity surge through you?
Zeus: Let's exchange notes.

You swiftly shapeshift into the form of a lightning bolt. Semele's eyes widen.

Semele: We are going to have so much sex right now.
Lightning: I know.
-> semele_is_interested



=semele_judgy_flirt
Zeus: Wow you get off on torturing animals? That's some nineteenth century shit right there.
Semele: Oh save the screed, the frog's already dead. It's a specimen from the lab's storeroom. Seriously, what kind of a heel do you think I am? Besides...

She looks you up and down

Semele: ... you wouldn't begin know what gets me off.
Zeus: This is true. ... but I am very humble and willing to learn.
Semele: Why, Mr Zeus... I should turn these electrodes on you.
Zeus: Well, why don't you?
Semele: ... You're not even joking, are you?
Zeus: I only joke on Tuesdays, Miss Semele.
Semele: Is that so?
Zeus: No. That itself was a lie.
Semele: Well, for the record I keep my electrocutions to people who share my... eclectic tastes. And I don't think you qualify.
Zeus: You'd be surprised. Also, you could have said 'eclectric' just then and made a cracking pun of it.
Semele: Let's just put the puns behind us, shall we?
Zeus: Why? I like to keep up with current events.
Semele: Keep this up and I will electrocute you.
Zeus: Now we're talking.
Semele: You really think you're up to it, huh? 
Zeus: Actually I think you're a bit of an amateur. Get ready for a SHOCKING revelation.
Semele: Ugh, I hope that's not another pun.
SOUND Shape of a Goat
You do your shape-shift shimmy and assume the form of a lightning bolt.

Semele: Dammit.

-> semele_is_interested


=semele_approving_flirt

Semele: What, you're going to sit here and watch me electrocute a frog? 
Zeus: Sure, why not? My schedule's free.
Semele: I don't doubt that for a second.
Zeus: Hey, you're the one holed up in a science lab while everyone else is being all studenty and partying and stuff.
Semele: Well, off you go then.
Zeus: Nah. I think I like it more in here.
Semele: Suit yourself.

She returns to electrocuting the frog while keeping an occasional eye on you. For all the awkwardness she doesn't seem to be too put out by your presence.

Semele: Oh, dash it!
Zeus: What's up?
Semele: These electrodes are rubbish. No power!
Zeus: Ooh, I might be able to help you with that.
Semele: No dice Mr Mansplainey, I've tried fiddling with them but there's no way to increase the voltage.
Zeus: Well yes, but have you tried FIDDLING WITH THIS.
SOUND Shape of a Goat
As you shapeshift into the form of a lightning bolt your clothes mysteriously disappear. You've never figured out how or why that happens but they come back when you revert so you've never really questioned it.

Semele: HOLY LIGHTNING COCK!
Lightning: Yeah, pretty much.

-> semele_is_interested


=semele_is_interested

MUSIC Under a Moonlit God

Semele: You just became a whole lot more interesting, and I already sort of had a thing for you.
Lightning: Good to know.

Semele pushes you hard onto the lab bench then jumps up and straddles you. She has some difficulty with this as you're a constantly shifting entity of energy with no discernible form, but she gets there in the end. 

Semele: More voltage!

You slowly increase your power output and send your current coursing through her. She begins to convulse like the frog on the lab bench.

Semele: Yes... I have always dreamed about this.

Lightning: Really? I always get those ones where my teeth are falling out.

Semele: More voltage!

Again you increase your power and her convulsions grow more intense. This is an odd way to start the week.

Semele: More voltage!

You do as she says and increase your power output again.

Semele: Haha yes! My psychologist said I was a hopeless case who needed shock therapy. Well I'm gettin' it! You like that, Mr Hetherington? I'm getting what I need, and YOU'RE NOT GETTING ANYTHING YOU OVERQUALIFIED HACK! More voltage!!

As you increase the power further the room again begins to fill with the smell of burning skin. You think you can see smoke enemating from Semele's body, but it's hard to tell for sure because you're distracted by the amazing sex you're having.

Semele: More voltage!

You increase your power. You've never pushed this hard before! 

Lightning: I can't give it any more, Semele! If I give it any more I'll blow!
Semele: Isn't that the idea?
Lightning: Oh, you're right. INCREASING POWER.

You increase your power. The lights in the room flicker and the computer by the window reboots.

Semele: Feel the power, see the energy coming up, COMING ON STRONG! MORE POWER! MORE POWER!

Semele is really hot! Like really, as in temperature hot. In fact, she's so hot that she glows bright red and bursts into flame.

Semele: Oh, shitting cock.

The fire engulfs her completely and she explodes into a (hot) mess. Before you can respond to what's happened all that remains of her is an ashy cloud hovering above you.
SOUND Form of a Deity
You sheepishly re-assume your human form (though not as sheepishly, it must be said, as you would if assuming the form of a sheep).

IMAGE middle Zeus_normal flip
IMAGE left Semele_cloud

MUSIC Under a Starstruck Moon

Zeus: Ooooh... sorry about that.
Semele: Don't apologize! That was COMPLETELY amazing.
Zeus: But you're a cloud! And that explosion can't have tickled.
Semele: Well, you're not wrong there. But I think I'm okay with this whole cloud thing.
Zeus: Really?
Semele: Yeah! I can float around wherever I want. The wind is tickling me in bits I didn't even know I had. Wait... I guess until now I DIDN'T have them. But that's what makes it exciting! Besides, I can see my house from up here.
Zeus: You're taking this awfully well.
Semele: Well, you GAVE it awfully well.
Zeus: So you're not unhappy with me?
Semele: Nah. I'm completely on board with being a cloud. I'm going to spend my time up in the heavens chasing thunderstorms. Can you imagine the kick one of those would give you from up here? I think this is my calling.
Zeus: Err, right.
Semele: Don't knock it until you've tried it, voltage boy. This is a blast and a half.

CLEAR right

And with that she drifts off into the breeze like an atypically aerodynamic elephant.

Cloud, eh? That's not something you'd considered before but she sure gave it a solid endorsement. You wonder if your Goddy shape-shifting powers would stretch far enough to allow you to become a cloud yourself? You guess there's one way to find out.

Zeus: Nnnnngh. *cough*

You adopt your best shapeshifting pose and clench like you've never clenched before.

Zeus: Zig-a-zig, Aah!

SOUND Shape of a Goat
NEW TRANSFORMATION ACQUIRED. You are now able to shapeshift into the form of a cloud!

Cloud: Hey, that DOES tickle. I'd better revert to my human form before I become overstimulated.

SOUND Form of a Deity
Zeus: Ah, that's better. The reassuring familiarity of dangling flesh.
Hera: ZEUS!!
Zeus: Ah, crap.

FLIP middle

MUSIC In the Arms of a Parrot
SOUND Form of a Deity
Your wife Hera wisps in through the window and assumes her human form. You wish she'd just use the door like everyone else.

IMAGE right Hera_normal flip

Hera: What are you doing here?
Zeus: Just repeatedly electrocuting this dead frog! Nothing eccentric or unusual.

She gives you more side-eye than a black moor convention.

Hera: Why did the power go out just now?
Zeus: Erm.. these electrodes! They must have overloaded the grid.
Hera: *sniff* What's all this ashy smoke, then?
Zeus: I was also vaping?
Hera: Vaping?
Zeus: Yes! Vaping.
Hera: So you've been here all day, electrocuting frogs and vaping.
Zeus: That's me! Ol' frog zappin' vapin' Zeus.
Hera: And why does it smell like sex in here?
Zeus: Sex?
Hera: Yes. It smells like someone just had sex in here.
Zeus: That must be the frog! They often smell like sex. That's why people lick them as aphrodisiacs.
Hera: I thought that was toads.
Zeus: They're basically the same.
Hera: Toads are a completely different genus.
Zeus: Yes, well OBVIOUSLY they're a different genus but physically they're basically the same. 
Hera: You don't say.
Zeus: Well, I just did.
Hera: I see.

Hera: You wouldn't be CHEATING on me, now would you Zeus?
Zeus: CHEATING? Hera, darling, love of my life! Whatever makes you think I would ever be unfaithful?
Hera: The unending procession of affairs you've embarked upon for the entirety of our marriage.
Zeus: Yes well there's those, but I'm a changed man! New Zeus doesn't cheat on ANYONE or ANYTHING, with the exception of Space Alert and my taxes. I'll prove it to you! Let's have some hot sex right now.
Hera: Can't. I'm off to the winery with Cydippe and I'm already late. 
Zeus: Well, don't let me hold you up, my one and only true love.
Hera: Hmph.
* [Mooch on over to the playing fields]
-> playing_fields


=== playing_fields ===

BACKGROUND outdoor
MUSIC My God Ate My Homework
CLEAR all

You mooch on over to the playing fields, the sound of a cheering crowd reaching your ears as you walk among some trees.
Io: You found my secret spot.
Zeus: Uh, hi. I didn't see you there.
Io: You're not supposed to. I'm watching the game from here because I want the other team to win.
* ["Who are the teams"]
Zeus: Who are the teams?
Io: The ZIGZAG U Eagles and the Cretan Bulls. And I want those bulls to bowl those eagles over.
-> unloyal
* ["That's not very loyal"]
-> unloyal

= unloyal
Zeus: That's not very loyal. You've gotta support your own university team.
Io: But they're BULLS! They're so awesome.
Zeus: But you don't need to hide here. I'm sure no one would notice if you were in the stands.
Io: Well, I'm not just here because of that.
Zeus: No?
Io: This is where the mascot comes to take off his costume. Sometimes he lets me wear it. It's so hot.
Zeus: I'm sure it is, when someone's been wearing it for a whole game!
Io: Well I like it.
* ["I'm not judging"]
Zeus: I'm not judging. In fact, I think it's endearing.
Io: You do?
Zeus: Sure. You've got an interest and you're not ashamed to pursue it.
Io: Yeah, I suppose you're right.
-> io_likes
* ["I like you"]
Zeus: I like you.
Io: Well, you've got a funny way of showing it, buster.
Zeus: I'm just nervous. You make me feel like a bull in a china shop.
Io: What a cheap gag.
Zeus: Just let me take the bull by the horns and-
Io: Ugh!
Zeus: I'm not going to spin you a cock and bull story.
Io: You're relentless.
Zeus: And I'm not going to stop until I hit the bull's eye.
Io: How many more of these have you got?
Zeus: I've got plenty left in the bull pen.
Io: You know, you're kinda cute after all.
-> io_likes

= io_likes
Io: So, what are you doing here? The way to the bleachers is that way.
Zeus: Well, I'm not really here for the game. I came to see you.
Io: I know what that's like. I don't really like football, but I can't keep away from those bulls.
* ["You're a bull to me"]
Zeus: Well, in this case: you're a bull to me.
Io: Uh-huh...
Zeus: No! I mean-
Io: Relax, I know what you mean. I'm just playin' with ya.
Io: And for what it's worth, I'd let you be my bull.
Zeus: You would?
Io: Sure. You know, you've got the looks. Social skills could do with a scrub up. Although I guess it's kinda sweet. Yeah, I can see myself having a good time with you.
Zeus: Why don't we, then?
Io: N'aww, I can't pass up the opportunity to wear that bull costume. Sorry.
Zeus: Well, what about if we fool around here?
Io: Out in the open? No way!
Zeus: How about if we do it, but remain well hidden?
Io: Sure. But how?
-> io_flirty
* ["I can't keep away from you"]
Zeus: I can't keep away from you.
Io: You're really corny.
Zeus: I'm just nervous. Mouth-diarrhoea, you know?
Io: Here's a tip: talking about excrement isn't usually the best way into a woman's heart.
-> io_reject

= io_flirty
OK, so how will you remain hidden?
* [Dig a hole]
Zeus: I'll dig a hole, we climb in.
Io: Do you have a spade?
Zeus: No.
Io: Anyway to stop us getting muddy down there?
Zeus: Nope.
Io: Something to stop the mascot falling down to join us when he comes past here?
Zeus: Well, no.
Io: Let's put that idea in the 'maybe' pile.
-> io_flirty
* [Climb a tree]
Zeus: We could climb one of these trees.
Io: 1. I have a terrible sense of balance, I do not want to be falling out of any trees.
Io: 2. There's hardly any leaves on these trees, they wouldn't keep us hidden from anyone.
Io: 3. It's just a really stupid suggestion.
-> io_flirty
* [Shapeshift into Lightning]
SOUND Shape of a Goat
Fananganang! You're lightning.
Io: Ah! What the? How? Whu? Huh?
Lightning: If I flash in front of everyone's eyes I could blind them all. Then no one would see us.
Io: Oh. That's not a bad idea, but have you got one that doesn't cause permanent damage to everyone?
-> io_flirty
* [Shapeshift into Cloud]
Zeus: If I do this. Hghngh!
SOUND Shape of a Goat
You floof into a cloud.
Cloud: I can surround you in my misty embrace, keeping you completely hidden from any prying eyes.
Io: Come on then. But how will you, you know...
Cloud: Oh, you'll see.
You surround Io. And now I can't see a thing. Ooh, was that a bit of- no, just my imagination.
Well, I suppose I'll leave you to it. Doo-dee-doo.
Make sure you remember all the details so you can tell me everything later.
Oh no. Psst. Zeus. Psss-ssst. Stop. Hera's coming.
-> hide_io

= io_reject
You hear someone running towards you from the field. It's the Bulls mascot removing the bulky horned head. He drops it by one of the trees where he takes off the rest of the costume. Then he runs for the building, holding his crotch.
Io: I love you!
Zeus: I don't think he can hear you.
Io: He's left me the costume! Squeeee!
Zeus: Nah, he's just gone to use the bathroom.
Io: Either way, now's my chance.
She grabs the costume in a feverish rush, pulling on the hoofed arms and legs.
Io: Ohh, it smells amazing!
She smiles at you as she lift the mask onto her head.
Io: Mmmmmm.
Io: Oh! Ooooooh!
Io: Mmmmmm huh. Huh. Oh.
Some students turn to look as they're walking by.
Well, this is a bit awkward. Maybe you should hide Io's wriggling and writhing from prying eyes.
But how? Surely one of your transformations could help out now.
* [Shapeshift into Lightning]
SOUND Shape of a Goat
You clatter into the form of lightning.
Lightning: I'll blind anyone that tries to sneaks a peek.
Io: What'd you say?
Lightning: Umm, nothing.
Io: Please don't hurt anyone.
Lightning: Fine.
You decide to see if being a cloud would be any better.
Cloud: Ah! I can surround you like this, and no one will see through my thick mist.
No sooner have you done this than Hera appears before you. Gulp.
-> hera_io
* [Shapeshift into Cloud]
You go all thick and fluffy.
Cloud: Ah! I can surround you like this, and no one will see through my thick mist.
No sooner have you done this than Hera appears before you. Gulp.
-> hera_io

= hide_io
What are you going to do now?
* [Shapeshift]
Shapeshifting to any other form will reveal Io, and Hera will certainly not be happy about seeing that.
-> hide_io
* [Look around]
You look around you. The mascot's costume is leaning against a tree right next to you.
Cloud: Hey, Io.
Io: Yeah?
Cloud: Put the costume on.
Io: Wow. When did he leave that here? Man, if I've wasted a MINUTE where I could've been wearing that, I'll be so mad.
Cloud: Just put it on will you? Quickly!
Io: OK. You don't have to tell me twice.
SOUND Form of a Deity
Io scrambles into the bull costume. And just in time; no sooner has she pulled the head on, Hera appears before you.
-> hera_io

= hera_io

MUSIC In the Arms of a Parrot
Hera: Zeus! What are you hiding in there?
Cloud: I-I'm not Zeus. I'm a fluffy cloud.
Hera: Zeus. I'm giving you 'til the count of three to become something with a face I can talk to. And probably slap if you're doing what I think you are. 1... 2...
Cloud: But I'm just-
You change into human form.
Zeus: playing hide and seek with my friends.
Hera: But it's just you and this cow.
Io: Bull, actually.
Hera: It's just you and this bull. I don't see anyone else playing hide and seek.
Zeus: That's because they're so well hidden. Look! Over there.
* ["Found you, Philip!"]
Zeus: Found you, Philip!
-> hera_io_cont
* ["I can see you, Echo!"]
Zeus: I can see you, Echo!
-> hera_io_cont
* ["You'll have to do better than that, Jeremy!"]
Zeus: You'll have to do better than that, Jeremy!
-> hera_io_cont

= hera_io_cont
Hera: Hmmm. You've not been having you-know-what with that bull have you?
Zeus: What? No! What do you think of me?
Hera: I think you've got an insatiable libido, and if I turn my back for one second, you'll find another poor waif to create more demi-gods with.
Zeus: No, Hera. I've only got eyes for you.
Hera: It's not your eyes I'm worried about.
Zeus: You can trust me, can't she bull?
Io: Mmmoooooo.
Hera: Well, OK. If you say so. But I've got many eyes watching you, Zeus Maxwell Jones. Don't make me regret signing you up for this university.
Zeus: I won't, dear.
Hera: That's good to hear. I'll see you later. But not much later, so don't get any ideas.
Zeus: No, snookums.
You blink and she's gone. She didn't even say 'bye'. Bit rude.
MUSIC Under a Moonlit God
* ["You can come out now, Io"]
Zeus: It's OK. You can come out now, Io.
She doesn't seem to have heard.
Zeus: Hey that bull costume saved my bacon just then. I wonder if I could...
You shake out your hands and legs.
Zeus: Bar bar bar bar barbara ann.

SOUND Shape of a Goat
NEW TRANSFORMATION ACQUIRED. You are now able to shapeshift into the form of a bull!

Bull: Hey Geppetto - I mean Io - I'm a real life bull.
Bull: Would you consider an invitation to copulate with myself untoward?
Io: Mmmmm I'mmmmmm finnnnnnne innnnn herrrre thannnks.
Bull: But I'm an actual, real life bull!
Io: I'm in the middle of something here. Maybe another time, alright?
Bull: You don't know what you're missing. I'm a fine specimen from nose to tail.
Io: To be honest with you, I'm really more into the costume than real bulls. I don't think I could handle a real one.
Bull: That makes sense.
SOUND Form of a Deity
You changed back to human form.
Zeus: Well, good luck with everything.
Io: Mmmhmmmm.
* [Cruise on over to the swimming pool]
You walk away and cruise on over to the swimming pool.
-> europa








=== europa ===

= poolside

BACKGROUND pool
MUSIC A Study In Hot Pink

There's one person swimming in the pool. Long strokes making her glide easily through the water. She stops and treads water when she sees you approach.
Europa: Hey there, handsome. Taken up my offer, have you?
Zeus: Yeah, I thought you could do with some company in there.
Europa: Come on in.
Zeus: I - ah, haven't got my swimming costume.
Europa: Don't worry about that. Get naked. You haven't got anything I haven't seen before.
You strip off, even though your clothes are only manifest because you've chosen to be in human form. Yet, they still remain on the floor when you remove them. Look, it's a bit complicated. All you need to know is that you've just stripped off beside the pool.
Europa: Impressive.
Zeus: You think that's impressive? Get an eyeful of this.
-> impressing

= impressing
How will you impress Europa?
* [Shapeshift into Lightning]
SOUND Shape of a Goat
Shazam! You throb with electric power.
Europa: What do you think you're doing? Trying to kill me?!
Lightning: I just thought-
Europa: No, you didn't think. Water and lightning and human bodies don't go together well. The results can be rather lethal.
Lightning: Right, right. I'll try to remember that.
SOUND Form of a Deity
You return to human form.
-> impressing
* [Shapeshift into Cloud]
SOUND Shape of a Goat
Flimp! You're a cloud. You float over the pool and mingle with the steam rising off the water.
Cloud: Teeheehee!
Europa: What's so funny?
Cloud: It's just so tickly.
Europa: I guess that is pretty impressive. What else can you do?
SOUND Form of a Deity
You glide back over to the poolside and return to human form.
Zeus: Let me think...
-> impressing
* [Shapeshift into Bull]
SOUND Shape of a Goat
Heffalump! You morph into a bull.
Bull: How does this transmogrification suit your desires?
Europa: Woah! You're so muscular, so... so beefy!
Bull: I am delighted to have met with your approval.
Europa: Can I ride you?
Bull: I see no reason to refuse. Hop on.
She clambers out of the pool and up onto your back, dripping water down your flanks. Europa grips onto your horns and squeezes with her strong legs.
Europa: Yah! Mush! Giddy up!
You leap forward at a pace, picking up speed as you turn the corner by the pool.
Europa: This is so much better than a bucking bronco.
You kick your back legs out as you rush down the length of the pool and into the next corner. Europa's being flung from side to side, but her grip still holds.
Europa: That's it, baby. Buck me! Buck me!
You pass a sign reading: No running.
Europa: Ignore that sign.
You see another sign as you turn the corner: No horseplay.
Europa: And that one.
You charge along the pool edge. Your hoof slides from under you as you rush over some standing water. Losing control, you fall into the pool, a cascade of water rising into the air as your heft displaces the water.
Europa surfaces nearby and hugs close to you when the droplets fall back into the pool.
Europa: Eeeee!
You bob together as the liquid settles.
Europa: Thank you. I, err... needed that.
She kisses you on the nose. You feel somewhat dizzy. Stars spin in your eyes.
Europa: Change back into a human and I'll make it worth your while.
-> light_get
* [Thrust your hips forward]
You thrust your hips forward.
Zeus: Huzzah!
When the motion's stopped you look at Europa.
Europa: Yyyyyeah... Not quite so impressive anymore.
You'll have to do something to get her back onside.
-> impressing

= light_get
* [Shapeshift into Human]
You shut your eyes to concentrate on your transformation but all you can see is stars.
SOUND Shape of a Goat
Twinkle twinkle! Well something's happened. You've changed form.
MUSIC Under a Starstruck Moon
You open your eyes and look at yourself. You see a glimmering mass of lights.

NEW TRANSFORMATION ACQUIRED. You are now able to shapeshift into the form of a light!

Light: That was unexpected.
Europa: Is that what you normally look like? A non-corporeal shower of light?
Light: No. I didn't mean to become this. It's quite cool though. I'm nimble, I'm bright, I'm golden.
Europa: I look for other qualities in my men. Substantiality between pretty high on the list.
You go to touch Europa's arm but find yourself flying across campus at the speed of light.

BACKGROUND clockTowerOutside

Light: Woah! I better learn how to control myself like this. I'll become human again before I hurt somebody.
You transform back into your human appearance. And yes, you're wearing clothes again. I told you, it's complicated.
You look around and find you're outside a tall clock tower. Didn't you hear Ganymede saying something about someone being inside?
-> clock_tower










=== clock_tower ===

BACKGROUND clockTowerOutside

You approach the tall tower. It's tall. It's a tower. Hold on. I forgot clock.
Clock tower. The tall clock tower. Tall, towering, and clocky.
Nice.
* [Jump]
You try to jump onto the roof, but only make it a foot (30.48cm) off the ground. I don't know why you bothered trying. So you just walk in through the door.
-> clock_interior
* [Use the door]
You grip the doorknob firmly in your hand and turn it. You push against the door. But nothing happens.
You try pulling the door. Something happens. Shock horror: the door opens! Who would've believed it, eh? You skulk inside like a typoed skunk.
-> clock_interior

= clock_interior

MUSIC Mounting Olympus
It's pretty dark inside, but you can see there's nothing of interest on the ground floor so you head up the wooden set of stairs.
BACKGROUND door
At the top is a door, a beam of light shines through a keyhole, and - under the sound of a machine humming - you can hear someone scrabbling around in the room beyond.
* [Try the door] You turn the handle of the door but it won't budge, no matter which way you try. This door is locked. -> danae_talk1
* ["Hello? Anyone in there?"]
Zeus: Hello? Anyone in there? -> danae_talk1

= danae_talk1
The scrabbling sound comes closer to the door and the thin light is extinguished.
Danae: Hello? Can you hear me? I've been locked in
* ["What happened?"]
Zeus: What happened?
Danae: That doesn't matter right now. Just - please - you've gotta get me out. I've been in here all day
-> but_why
* ["Stand back!"]
Zeus: Stand back! I've got a plan
-> a_plan

= but_why
* ["Not until you tell me why"]
Zeus: Not until you tell me why you've been locked away. You could be an escaped convict
Really? Is that the best you could come up with? That's so cliche. I'm going to punish that lack of originality by having Danae ignore your latest comment.
So... erm. How can I get this back on track?
I know...
Danae: Please help me!
Zeus: OK. Stand back! I've got a plan
-> a_plan
* ["Stand back"]
Zeus: Stand back! I've got a plan
-> a_plan

= a_plan
Come on then, hot shot. What's the plan?
* [Yell for help] You start yelling at the top of your voice.
Zeus: Heeeelp! Heeeelllp! Helepelepeepepep! He-
Danae: Would you shut up! Don't you think I might have already tried that?
Zeus: I suppose you might. OK, new plan
-> a_plan
* [Ask Danae where the key is]
Zeus: Do you have the key?
Danae: If I had the key would I still be in here?
Zeus: M-maybe
Danae: No, no I wouldn't. If you don't do something soon I'll wet myself
Zeus: I better think quickly
-> a_plan
* [Shapeshift] Oh, this might actually work. Go on then. -> shapeshift_danae

= shapeshift_danae
What will you shapeshift into?
* [Lightning]
You decide to become Lightning.
Zeus: Remain standing back!
SOUND Shape of a Goat
Your skin frizzles with electric energy. Wham! You're a lightning bolt.
Lightning: I hadn't thought this through!
You earth to the nearest metal object: the door handle. It promptly melts leaving a red hot lump that's no use to anyone anymore. Good work.
-> shapeshift_danae
* [Cloud]
Zeus: OK, you don't need to be as standing back now. I don't think even I could hurt you while being a soft billowy cloud.
Danae: You what?
Zeus: Oh, forget it.
SOUND Shape of a Goat
Puff! You're a cloud.
-> cloud_danae.
* [Bull] You will take on the form of a bull.
This could be fun. Let me just get some popcorn.
...
OK.
Zeus: Could you please go as far back and remain as un-matador-like as you can?
Danae: I don't like the sound of this.
Ignore her. This is the best idea ever.
SOUND Shape of a Goat
Flink! You're a bull. The wooden landing below you creaks with the sudden weight of your bulk.
-> bull_landing
* [Light] You're gonna give this Light thing a try.
Zeus: Stand back. Unless you like being tanned.
Zeus: That might be how this works, I'm not really sure.
Zeus: Anyway. Stand back. Away from the door.
Danae: *mumble mumble*
Zeus: What? I didn't hear you cos
SOUND Shape of a Goat
Light: I just changed into a shower of gold light *sparkle sparkle*
Danae: R-right. Anyway. If you could go and get me some help that would be great. Emphasis on 'go'.
-> light_danae

= cloud_danae
* [Float on through the keyhole] You can certainly squeeze your molecules together to fit through the hole, but there's something pushing against you.
Cloud: Wind! My greatest enemy. And also ally. Actually, I'm kinda lukewarm to wind, if I'm honest.
There's a strong air current blocking your passage through the keyhole. Well that sucks. Or blows, amirite?
Cloud: I might as well change back.
Danae: What did you say?
Zeus: Nothing.
-> shapeshift_danae

= bull_landing
You eye up the door, readying to charge it.
* [Charge] You put one hoof forward, the wood underneath splinters and you trip, hitting your head against the door. You've left a small scratch in the wood, but otherwise the door is still as solid as before.
Bull: Um... That was a practice run.
Danae: You're practising knocking on the door? How's that going to help?
Bull: I thought your imprisonment might be psychosomatic.
Danae: Don't be ridiculous. Just open the door!
Bull: I'll need to think of something else.
Danae: Too right!
Zeus: Leave it to me.
Danae: If only I had any other option.
-> shapeshift_danae

= light_danae
Light: Hey. Don't be like that *sparkle sparkle*
Danae: Why do you keep saying 'sparkle sparkle' after every sentence?
Light: It's endearing *sparkle sparkle*
Danae: I'll be the judge of that
Light: And...? *sparkle sparkle*
Danae: It might be growing on me.
Light: *sparkl-
Danae: Growing on my nerves! Would you stop that and just do some rescuing? Please. I really need a wee.
* [Zip through the keyhole] You bundle your photons together and point a ray through the keyhole.
Before you know it, you're on the other side.
-> in_clock
* [Just stay where I am, thanks] You remain in place. As much as a wild bundle of particles can remain in one place, anyway.
In fact, anyone with a passing interest in particle physics will know how particles can suddenly be somewhere else entirely.
And lo and behold, wouldn't you know it, at this very instant all of your particles have shifted over to the other side of the door. What are the chances?
-> in_clock

= in_clock
BACKGROUND clockTowerInside
MUSIC In the Arms of a Parrot
Finally inside the inner workings of the clock tower, you can see Danae for the first time. Unfortunately the moment is slightly ruined by the mass of dead birds covering the floor.
Danae: I-is that you?
Light: Of course. My name's Zeus, what's yours?
Danae: Danae
Light: You don't know what your own name is?
Danae: Don't be daft. So now you're in here, how are we going to get out?
* ["Oh yeah"]
Light: Oh yeah, that's a really good point. Ermm...
-> plan_to_leave
* ["What's the rush?"]
Light: What's the rush? I've got all the time in the world... for you.
Danae: Well I've got a bladder that's about to burst so if you could just think of a way to help me rather than get in my knickers (which will very soon be very much wetter), I'd appreciate it.
-> plan_to_leave
* ["Wait, what about the birds?"]
Light: Wait, what's going on with these dead birds?
Danae: Look, we can talk about anything you like once we're out of here. Right now, my top priority is escaping this place.
-> plan_to_leave

= plan_to_leave
Light: OK. So what have we got here? Loads of dead birds, an idustrial size fan pointing at the door.
Light: Why is there an industrial size fan pointing at the door?
Danae: To keep the poison out.
Light: Huh?
Danae: I'm fumigating the clock tower, and that fan is keeping the fumes out.
Light: So that's why there's all these dead birds?
Danae: Or 'pests'. Yep.
Light: Couldn't there have been another way?
Danae: Well, I could have elecrocuted them. That's always fun to watch.
Light: Not what I meant.
Danae: I know.
Light: There's an open panel up there
Danae: I've climbed up and had a look. It's no good, there's a shear drop outside.
Danae: Maybe if it was on the other side I could dive into the river, but sadly it's hard ground below.
Light: Hey
SOUND Form of a Deity
Zeus: I think I've got a plan.
Danae: Oh, is that what you really look like?
Zeus: Kinda. Do you like it?
Danae: I prefer the sparkling golden lights look, myself.
Zeus: Well that's good, because that light show made you pregnant.
Danae: You what?
Zeus: You know when I said to move back? There was a very good reason.
Zeus: You didn't move back quite far enough and now you've got a pigeon in the coop.
Danae: ...
Danae: I can't deal with this now. Just tell me what your plan is.
Zeus: Why tell you when I can show you?
* [Pick up dead birds] You scoop up a bundle of birds, the individual creatures lost in a mass of feathers, claws, and beaks. You start to juggle with them. Danae looks on, unimpressed. You drop the birds. Maybe you should try shapeshifting?
-> shapeshift_interior
* [It's shapeshiftin' time] -> shapeshift_interior
* [Fiddle with fan] You try to haul the large fan around, but it's too heavy. Maybe if you were to shapeshift?
-> shapeshift_interior

= shapeshift_interior
What will you shapeshift into?
* [Lightning]
Zeus: Keep well clear and make sure you're not touching anything metal.
Danae: Er... OK.
SOUND Shape of a Goat
CHOOM! You're lightning, you are.
-> lightning_interior
* [Cloud] You foof into a cloud and are immediately sucked into the fan. After spinning you around a couple of times, it spits you out and the wind forces you back out through the keyhole.
BACKGROUND door
SOUND Shape of a Goat
Once again on the wrong side of the door, you shapeshift into light to get back to Danae.
BACKGROUND clockTowerInside
SOUND Form of a Deity
Zeus: That didn't go as I expected. Maybe if I try...
-> shapeshift_interior
* [Bull] Your muscles ripple and alter as you become the bull. You dip your head, aiming for the door. You scrape a hoof along the floor.
You're ready to charge.
Forward you go, speeding through the room, keeping the door in your sights. But your horns get tangled in the fan. You try to shake free, but only succeed in moving the fan around. It blows feathers about the room. You disentangle yourself from the fan, which settles back into its original position.
Bull: Hmmm...
Zeus: That wasn't quite right.
-> shapeshift_interior
* [Light] You become a shower of light again.
Danae: How is this different to how you just were?
Light: It isn't.
Zeus: Let me try something else...
-> shapeshift_interior

= lightning_interior
* [Touch the fan] You reach out to the fan. At your touch, it sparks and speeds up, the whirring becoming louder. But that's all. You retract your touch and it settles back to its usual speed. You inadvertently brush against a pigeon.
-> lightning_interior
* [Touch a bird] Your spark touches the dead bird, sending electricity shooting through all those in contact. Their little bodies explode in a cloud of feathers.
Lightning: That was awesome!
Danae: What'd I tell you? Electrocution's the way to go with birds.
As the feathers settle onto the floor, you transform back.
Zeus: Now for the next stage of my plan.
Danae: You're not going to change into something again are you?
Zeus: As a matter of fact, I am.
-> next_stage

= next_stage
What will you shapeshift into?
* [Lightning]
SOUND Shape of a Goat
You crackle into a bolt of lightning and touch another of the birds, but it's no good. They're all de-feathered. And trying to Frankenstein them simply won't work. You'll have to use a different form.
SOUND Form of a Deity
-> next_stage
* [Cloud]
SOUND Shape of a Goat
You shoomf into a cloud and are immediately sucked into the fan and out through the keyhole.
BACKGROUND door
You pulse into lightning to get back into the feather-floored room.
BACKGROUND clockTowerInside
Another angle will have to be considered.
SOUND Form of a Deity
-> next_stage
* [Bull]
SOUND Shape of a Goat
You growl into a bull.
-> bull_interior
* [Light]
SOUND Shape of a Goat
You shimmer into light. You feel very sparkly but ultimately useless in the current situation. Maybe choose a different form.
SOUND Form of a Deity
-> next_stage

= bull_interior
What will you do now?
* [Charge at the door] You charge head-first at the door but the fan is in the way.
-> bull_fan
* [Charge at the fan] You barrel towards the fan.
-> bull_fan
* [Charge at the clock mechanism] You target a part of the clock's workings and rush towards it. Slipping on a bank of feathers however, you barrel into the fan. -> bull_fan

= bull_fan
Catching your horns in its frame, you wrench the fan round and see that its blast of air has made the carpet of bird feathers rise up off the floor.
Bull: Hmmm... aerodynamics, angle of trajectory, air density. I think I can make this work.
Danae: This looks pretty cool, but how is it helping us get out of here?
Bull: If my calculations are correct, we'll be able to escape in no time.
-> aiming_fan

= aiming_fan
Aim that fan at something.
* [Danae] You point the fan towards Danae and she's soon covered head to toe in feathers.
Danae: If you don't get these things off me in ten seconds, I'm going to shove each and every one of these birds int-
You angle the fan to get the feathers away from Danae.
Danae: I should think so. Let's not do that again, OK?
Bull: Hold on. Look! The feathers are going out of that panel and falling to the ground outside.
-> feathers_falling
* [The open panel] You angle the fan to shoot the feathers out of the open panel.
Bull: The feathers are dropping onto the ground outside.
-> feathers_falling
* [The door] You point the fan back at the door.
Danae: How is that supposed to help? That's how the fan was before.
Bull: Yes, but this time I'm holding it.
Danae: And...? Look, how about if you shoot the feathers out of that open panel up there?
Bull: What an intriguing proposition.
You angle the fan to do just that, watching feathers fly out and fall to the ground outside.
-> feathers_falling

= feathers_falling
You let the last few feathers fall to the floor before releasing the fan.
Bull: That should give us a sufficiently cushioned landing to prevent injury.
Danae: Thank you. I can finally get out of here.
SOUND Form of a Deity
* ["What's the hurry?"]
Zeus: What's the hurry? I was just getting to know you.
Danae: Well, I did kinda like you when you were that shower of gold light.
Zeus: It's the *sparkle sparkle* isn't it?
Danae: That was quite cute, I suppose. But I really need to use the toilet.
Zeus: Hey, that's OK; I like golden showers too!
Oh no. Was that too much? I think that was too much.
I think I'll draw a veil across this scene.
BACKGROUND clockTowerOutside
You and Danae emerge from the open panel in the clock tower, each having had relief.
-> danae_end
* ["Yeah, let's go"]
Zeus: Yeah, let's go. It's getting kinda stuffy in here.
You and Danae climb up to the open panel and dangle your feet over the edge.
BACKGROUND clockTowerOutside
-> danae_end

= danae_end
MUSIC Under a Starstruck Moon
Danae: Wheeee!
Danae lands in the middle of the pile of feathers that's built up at the base of the clock tower.
Danae: That was great. Come on down.
Zeus: Just coming. Yaaaah!
You settle amongst the feathers beside her.
Zeus: Hey, these feathers are pretty handy. That gives me a super duper idea.
Zeus: Wubadubbadubbaah!

SOUND Shape of a Goat
NEW TRANSFORMATION ACQUIRED. You are now able to shapeshift into the form of a bird!

You can choose from any of the birds of the world
as long as it's swan, eagle, or cuckoo.
I know it seems a strangely arbritrary selection while also being oddly specific, but that's simply the nature of your awesome powers. It's not up to me.
* [I'll be a Swan right now]
Swan: This reminds me of when I went on a bender and accidentally turned into a giraffe. Animals with long necks are so hard to handle.
-> danae_bye
* [I'll try out this Eagle]
Eagle: I feel elated! Delighted! I'm so happy with my lot in life.
Danae: Well you look exceedingly angry.
Eagle: Oh really? How about if I do this?
Eagle: Hmmm?
Danae: Still angry.
Eagle: Aww man.
-> danae_bye
* [I'll choose Cuckoo this time]
Cuckoo: Hmmm. I don't have much to say. Except this is the BEST DECISION I'VE EVER MADE!!!
-> danae_bye

= danae_bye
You flap your wings to test them, and are suddenly launched into the air. This will take some getting used to.
Danae: Wait, I haven't told you why I was locked in a room with an industrial fan! You see, I was just getting my...
But you're too far away to hear the rest. Oh well, I'm sure it was unimportant but completely logical.
You fly back to campus, and turn back into human form once you've landed.
Hera: Hey there, hun.
Zeus: Gah! Where did you spring from?
Hera: Does it matter? I've just popped down to tell you it's nearly home time.
Zeus: Can't I stay out late tonight?
Hera: No. It's a school night. You've got time for one more lesson, and then it's home for you.

* [Visit Leda at the Rowing Club]
Zeus: OK. I'll go and do some strokes with the rowing club.
Hera: That better not be a euphemism.
Zeus: Of course not!
-> rowing_club

* [Visit Ganymede in the gym]
Zeus: OK. I'll go and get some physical education in the gym.
Hera: That better not be a euphemism.
Zeus: Of course not!
-> gymnasium

* [Go with Hera back to Mt Olympus]
Zeus: You know what? Actually I'm pretty bushed. I'll come back home with you now.
Hera: That would be lovely darling.
She takes your hand and leads you back up to your throne room.
-> olympus_with_hera









=== gymnasium ===

BACKGROUND gym1
You enter the gym where the basketball team are practising. The large space smells of sweat and is filled with the sound of sneakers squeaking on the floor, in the centre of which is a logo of an eagle holding a basketball. You can see Ganymede shooting hoops from the free-throw line.
Ganymede: He shoots...
Ganymede: He scores!
Zeus: Hey, Ganymede.
Ganymede: Not now, dude. I'm busy.
He turns and runs to the other end of the court to continue training.
Zeus: Man, that guy is rude.
-> get_back

= get_back
How will teach Ganymede a lesson?
* [Stare daggers at him from afar] You look at Ganymede with a steely glare, but he's not even facing you. Maybe if you could actually stare daggers out of your eyes? Maybe in DLC.
-> get_back
* [Go and talk to him] You jog up to the other end of the court.
Zeus: Oi! I was talking to y-
Ganymede: Get away from me.
Again, he turns and goes to the other end.
-> get_back
* [Shapeshift] You decide there's nothing for it but to shapeshift.
-> shapeshift_courtside

= shapeshift_courtside
What will you shapeshift into?
* [Lightning] You transform into a bolt of lightning and make the lights flicker. That's about it really. I'm sure you can do better than that.
-> shapeshift_courtside
* [Cloud] You're a cloud now. Near some people training for basketball. Erm... what did you think would happen next? Better try something else.
-> shapeshift_courtside
* [Bull] You become that big ol' bull and promptly lay a cow pat down on the gleaming court. You dirty animal, you.
-> cow_pat
* [Light] You give the players a quick lightshow. Some of them stop to look at it, but without musical accompaniment they soon lose interest. Try something else.
-> shapeshift_courtside
* [Swan] As you become a swan, one of the basketballs comes flying towards your head. You instictively flick up with your long neck, knocking the ball into the basket and scoring a three-pointer. The coach sees this, and offers you the team captaincy. Sadly, you must decline; you've got to get back at Ganymede right now.
-> shapeshift_courtside
* [Eagle] Your form changes to that of the logo in centre court.
Ganymede: Hey! It's our mascot, Eagletonstenman.
He comes over, puts a ball in your talon and takes a selfie with you. While crouched next to you he whispers
Ganymede: The things I'd do to you if we were alone...
Then he gets up and goes back to training. Well, that was... enlightening.
-> shapeshift_courtside
* [Cuckoo] As a cuckoo, you fly around the gym. You don't learn or gain anything from doing this, but it was nice to stretch your wings and get above the clingy smell of sweat.
-> shapeshift_courtside

= cow_pat
You change back to human form before anyone can become suspicious. I mean, you are still standing next to a big, dirty cow pat. But no one can possibly suspect you've laid that, can they?
* [Go and talk to Ganymede] You join Ganymede at the other end of the court.
Zeus: Hey there, champ-
Ganymede: Leave me ALONE.
He darts away, he really doesn't want to talk right now. -> slippage
* [Yell at Ganymede]
Zeus: Oi Ganymede! You are not very good at the basketing of balls, also your running speed is found to be lacking. Oh, and you're a little bit smelly.
With that last (uncalled-for) insult, Ganymede turns to you, his face like thunder.
Ganymede: You little punk. I'm gonna get you.
He storms towards you. -> slippage

= slippage
But he slips on the cow pat and ends up sitting in the mess, his legs and hands covered in thick, brown goop.
Ganymede: Uch! Uhghh! Blugrh! Not AGAIN!
He unsteadily gets to his feet, and marches for the changing room. You follow.

// BACKGROUND changingroom

As you enter the changing room, you see Ganymede has already stripped off to- ooh, isn't he muscly? You remember Leda saying he was a dreamboat, but mmmm. You think maybe you'll prefer to have a bit of him. Wait, where's he gone? Oh, while you were thinking how cute his butt was, he's nipped into the shower area. Steam is already floating out through the open access.
What will you do?
* [Follow him in] You take a tentative step into the shower area.
Ganymede: Hey! What do you think you're doing? Team members only!
Zeus: I'm on the team. I'm the hoop-dangle-defence-brigade.
Ganymede: Get out!
You step back into the changing room. Maybe if you shapeshift instead?
-> shapeshift_changing
* [Shapeshift]
-> shapeshift_changing

=shapeshift_changing
What will you shapeshift into?
* [Lightning] Crackle! You're lightning. You're about to go into the shower area, but then have a nagging feeling at the back of your mind.
Lightning: Do water and lightning and human bodies goes together well?
You take a moment to mull this over.
Lightning: Hmmm. I can't really remember. Better not risk it. I don't want to harm that fine body.
That was close! You could have killed poor Ganymede. Maybe a different form would be of use here.
-> shapeshift_changing
* [Cloud] You morph into a cloud. Looking passably like the steam coming from the showers, you go inside.
-> in_showers
* [Bull] Reforming into the bull, you position yourself over Ganymede's discarded clothes. You defecate directly onto them, filling the sneakers and covering every stitch in excrement. Nice work. You feel satisfied and emptier in the bowels, but really you want to be another form to get wit' Ganymede.
-> shapeshift_changing
* [Light] A little flicker here, a little flicker there. You is light, right? And you is well sparkly. You sparkle into the shower area.
Ganymede: Wow! I wish I could be as sparkly as that.
Light: You can. Let me just cover you in my sparkly jizz- Jazz! I mean 'jazz'.
Ganymede: No, don't come near me. I'm covered in fecal matter. It no nice.
Light: I suppose you're right.
Another plan then.
-> shapeshift_changing
* [Swan] You swan into the shower area.
Ganymede: Oh hey, swan. Coming to clean your feathers?
Swan: That's it, yeah. Gotta keep clean.
Ganymede: Too right.
You stand watching Ganymede lather soap into his skin for a while, his bits and pieces dangling invitingly at your eye level.
Swan: Can I join you? I can't quite reach the shower knob? Your knob however is freely accessible.
Ganymede: Ooh, you cheeky thing. I'd love for you to join me, but I'm covered in cow-filth and I don't want your white feathers getting soiled. I can turn on the next shower along?
Swan: No, that's OK. I wanted to shower with you. Maybe next time, huh?
Ganymede: Yeah, that'd be nice.
Slightly crestfallen, you head back out to think of another way to get near Ganymede.
-> shapeshift_changing
* [Eagle] As an eagle, you hop into the shower area.
Ganymede: Woah! Get out, eagle. You don't want the water spoiling your feathers.
Eagle: It's OK, I'll be fine.
Ganymede: No, man. I want you to stay pristine. I've got plans for you. Just go back out, and I'll be with you as soon as I'm clean.
You do as he says, but you think back to what Leda said about Ganymede taking hours to shower - and that's probably when he doesn't have to scrub off cow dung!
So you decide to be pro-active. Another shapeshift!
-> shapeshift_changing
* [Cuckoo]
Cuckoo: Cuckoo. Cuckoo.
Cuckoo: Cuckoo. Cuckoo. Cuckoo.
Ganymede: Could you stop that? It's really annoying.
Cuckoo: Sorry.
You'll have to think of something else.
-> shapeshift_changing

= in_showers
You wrap your molecules around Ganymede's glistening body. He's too busy cleaning to notice.
Ganymede: Clean, clean, clean. Gotta get clean.
Cloud: You look clean to me.
Ganymede: Who said that?
Cloud: Erm... your conscience of course.
Ganymede: My conscience has a Scottish accent.
Cloud: Och-
Ganymede: Don't.
Cloud: OK. Well, I'm your clean spirit guide seer helper guy. And I say you are clean.
Ganymede: Nah, I'm not. I've got to be shining. Sparkling. Glistening like this just ain't good enough.
* ["Maybe I can help you there"]
Cloud: Maybe I can help you there.
Ganymede: Oh, I have my ways.
And those ways are shapeshifting!
-> shapeshift_shower

= shapeshift_shower
What will you shapeshift into this time? You can't be an animal here because you're surrounding Ganymede. He'd either explode or be crushed.
* [Lightning] You like to live dangerously so you become a streak o' lightnin'.
Ganymede: GGGgggggzzzzzZZZZAAAHHHH!!!!!
You electrocute Ganymede. Now he's dead.
Lightning: Whoops!
On closer inspection of his body, Ganymede's heart is fibrillating. The right voltage in the right part of his body should bring him back round. You do that. It was pretty easy, actually. Huh.
Before Ganymede regains consciousness, you morph back into a cloud.
Amazingly - if unsurprisingly - Ganymede awakes with no ill-effects or memory of what just occurred.
-> shapeshift_shower
* [Light] Your sparkly light settles on Ganymede's sculpted form.
Ganymede: Wow! I've never been so shiningly clean.
Light: Yeah, you look great. So now it's time you got out of the shower, matey. You don't want wrinkly skin ruining your look.
Ganymede: Hey, you're right. I'll just grab a towel.
He turns off the shower and starts to dry off.
Light: You towel yourself off in a really weird way.
Ganymede: Don't you start. My teammate's think I'm well weird. But I'm telling you, it's the most efficient way to get dry.
Light: I can't argue with that. You're already bone dry. And talking of bones, how about we do it? Sex I mean.
Ganymede: You're nice and all, but I'm not really interested in showers of the golden light kind.
Light: Oh, that's OK. I'm sure I've got something you will be interested.
You move away from Ganymede standing resplendent with naught on but a towel around his hips. Time to shapeshift yet again.
-> shapeshift_for_sex

= shapeshift_for_sex
So what will you turn into now?
* [Lightning] You crackle with electric energy.
Ganymede: You'd go down a storm with the Olympian Bolts, but - them being my greatest rivals - I ain't exactly turned on.
-> shapeshift_for_sex
* [Cloud] You become a loose collection of vapour.
Ganymede: Is that my clean spirit guide seer helper guy? You're helpful and all, but I don't really get how the logistics would work here.
Cloud: I could show you.
Ganymede: Nah, you're alright.
-> shapeshift_for_sex
* [Bull] You heave with bovine bulk.
Ganymede: Impressive, but not really my thing. Maybe one of the Cretan Bulls would like that. But not for me, thanks.
-> shapeshift_for_sex
* [Light] You go all sparkly again.
Ganymede: Seen that. Still not interested.
-> shapeshift_for_sex
* [Swan] You become a magnificent swan.
Ganymede: Oh hey, swan. You're cute and all, but I prefer my birds more... predatory.
-> shapeshift_for_sex
* [Eagle] Your aquiline splendour causes Ganymede to take a step back.
Ganymede: You- you're beautiful.
Eagle: I feel wonderful.
Ganymede rushes towards you, scooping you up in his arms. His towel drops with the movement. He strokes your curved beak.
Ganymede: Can you take me... higher?
Eagle: Well, I'm feeling pretty great about myself. So it might be my over-enthusiasm talking, but I think I'm strong enough to carry you to the top of Mount Olympus.
Ganymede: Let's do it.
He lets go of you to allow your talons to grab his strong shoulders. You carry him up, and fly with him into the gym.

BACKGROUND gym1

Ganymede: I LOVE THIS!
His teammates look up to see Ganymede nudely dangling from under your wings as you fly out through the doors, his excitement clearly visible to all.

BACKGROUND exterior

Ganymede: Higher! Faster! This is such a rush!
Eagle: Cool your socks.
Ganymede: I'm not wearing any.
Eagle: We can all see that.

BACKGROUND clockTowerOutside

You streak past the clock tower. Ganymede is also streaking. The other kind, you know. Are you aware that Ganymede is naked?
Ganymede: All my fantasties of Eagletonstenman are coming true!
Eagle: You have an unhealthy obsession with your team mascot.
Ganymede: I don't care.
You look down at Ganymede, his fine physique quivering with delight.
Eagle: Hmmm. Neither do I.
You soar up towards the heights of Mount Olympus.

BACKGROUND olympus

At the same time, you each reach the pinnacle of your respective activities.
You alight beside your golden throne, letting Ganymede recover in the seat while you shapeshift back to your godly glory. You hear movement behind you.
Hera: Zeus! What's going on here?
Zeus: What? Nothing. Why would you think something's happening? I've just got back from university. I had a very productive day.
Reproductive day, more like.
-> olympus_with_ganymede
* [Cuckoo]
Cuckoo: Cuckoo. Cuckoo.
Ganymede: That's not going to work. You're just really annoying.
Cuckoo: Cuckoo.
-> shapeshift_for_sex

=olympus_with_ganymede
Hera: So who is that?
* ["Ganymede. Our new cup-bearer"]
Zeus: He's Ganymede. Our new cup-bearer. You know how you're always going on about not having any wine to drink? Well he'll be right by my side, morning, noon, and night to keep my- I mean 'our' desires quenched.
Hera: Why is he naked?
Zeus: That's just his style. It's very avant-garde. Very 'in' right now.
Hera: I haven't seen anyone else parading around like that.
Zeus: Well, it's all the rage at the Olympic games, but you wouldn't know that, being unable to attend as you're a woman and all.
Hera: Yes, that was an odd rule you imposed.
Zeus: Oh, you don't want to be around the finest specimens of mankind while they're getting all sweaty running around and fighting. It's so smelly for a start.
Hera: I'll have to take your word for it.
Hera: Well, I'm going to bed. I hope you'll join me soon and won't stay up too late 'drinking wine'.
As she leaves, Ganymede rises from your throne.
Ganymede: You know, I think she might be suspicious of our relationship.
Zeus: Pish! She's never caught me before.
Ganymede: Really?
Zeus: Well, there was one time. Actaully two. No, wait. Most of the times I've been unfaithful Hera's found out about eventually.
Ganymede: And what does she do when she finds out?
Zeus: Erm... she turns my lovers into disgusting creatures, sends poisonous snakes and what-have-you to kill our offspring. You know, the usual.
Ganymede: ...
Zeus: You've got nothing to worry about.
Ganymede: I preferred you when you were just a hot eagle.
Zeus: Well, I can be if you want me.
Ganymede: Not right now. I'm still coming down after last time.
Zeus: I can see that.
-> game_end

=== game_end ===
You sit down on your golden throne, thinking about the day you've just had, considering the decisions you made, wondering what would have happened if you'd chosen differently. Sadly, you'll never know. We can't go back and alter the past. Such is life.
-> END










=== olympus_with_hera ===

BACKGROUND olympus

Zeus: *yawn* What a long day! I am going to sleep well tonight. G'night, luv.
Hera: Oh, Zeus! You used to be so romantic. Tricking me into sleeping with you. Keeping me sweet by naming illegitimate children after me.
Zeus: It's one of THOSE nights is it? OK, I can show you romantic. Watch this.
-> romance

= romance
How will you romance your wife this time? She's always liked your shapeshifting.
* [Lightning]
Lightning: Oh, honey. Wanna put the spark back in our relationship?
Hera: Lightning, Zeus? I've seen it so many times before.
That didn't work.
-> romance
* [Cloud]
Cloud: Baby, I can take you to cloud nine.
Hera: We're at the top of a mount(ain). Surrounded by clouds. I'm sick of the sight of them.
That could have gone better.
-> romance
* [Bull]
Bull: My love for you is strong as a bull.
Hera: I'm supposed to be attracted to this, am I?
Bull: Well, it worked with those humans...
Hera: What did you say?
Zeus: Nothing, sweetness.
You'll have to think of something else.
-> romance
* [Light]
Light: You light up my life.
Hera: Not good enough, Zeus.
Wow, she really didn't like that, huh?
-> romance
* [Swan]
Swan: I'll never go swanning off when you're by my side.
Hera: That's because when you're by my side I'm able to keep my eye on you and you can't be your usual unfaithful self.
Oops, that one backfired.
-> romance
* [Eagle]
Eagle: It should be ill-eagle how much I love you.
Hera: I'll  gladly put you in prison if you come up with another pun as terrible as that.
Uh-oh! I'm sure she doesn't mean it.
-> romance
* [Cuckoo]
Cuckoo: Cuckoo. Cuckoo.
Hera: Oh, treasure!
Cuckoo: Cuckoo. Cuckoo. Cuckoo.
Hera: You remember our first date!
Cuckoo: Cuckoo.
Hera: You are a romantic at heart.
Cuckoo: Cuckoo. Cuckoo. Cuckoo. Cuckoo.
Hera lifts you and cradles you in her arms.
Hera: Let's go to bed. But certainly not for sleep.
-> game_end_hera

= game_end_hera
Some time later you lay in bed, thinking about the day you've just had, considering the decisions you made, wondering what would have happened if you'd chosen differently. Sadly, you'll never know. We can't go back and alter the past. Such is life.
-> END








=== rowing_club ===

BACKGROUND rowingClub

You make your way down to the rowing club. There's some kind of race carnival on, and the club is full of people with the kind of taut, athletic bodies that can only be the product of a lifestyle you despise.

You mill around for a bit but you can't find Leda anywhere so you immediately decide to resort to shape-shifting, which by now has become your standard response to even the slightest obstacle.

-> shapeshift_leda

=shapeshift_leda
* [Cloud]
Good idea! You can float around in the sky and look for Leda. At least that's the plan. Unfortunately, there are so many people around that you just end up being constantly inhaled and exhaled by a bunch of annoyingly attractive athletes. Better try a different approach.
-> shapeshift_leda

* [Bull] You turn into your bull form. Immediately a woman next to you screams "OH MY GOD, IT'S A BULL!!" and a massive panic ensues. Well, what did you expect? You charge your way through the crowd and duck behind one of the buildings to revert to human form. Wearing your best nonchalant face, you stroll back out to the crowd.

-> shapeshift_leda
* [Light] Yes! By turning into a bright ball you light you reveal... absolutely nothing. It's already broad daylight here and as a result you're barely visible. You quietly morph back to your human form.
-> shapeshift_leda

* [Lightning] For a moment you consider the spectacular show that would entail if you were to shapeshift into a bolt of lightning and dive into the river. You decide against it; you don't want to risk the safety of the people around you or even worse, yourself.

-> shapeshift_leda

* [Cuckoo] You turn in to a cuckoo and almost immediately are trampled underfoot by the crowds. This was a particularly stupid idea. You wait for a gap in the traffic and morph back.

-> shapeshift_leda

* [Swan] You briefly morph into a swan, which gives you a spectacular view of the crotch of everyone walking by. Living the dream, Zeus.

-> shapeshift_leda


* [Eagle] You decide to ditch the crowds altogether. You shapeshift into an eagle and launch yourself into the sky as if in a slow motion sequence from an eighties power ballad. Excellently your eagle form comes complete with super sharp bird vision, allowing you to survey the entire area in plot-serving detail. You make a mental note to remember this the next time you leave your glasses at the pub.

At first you have trouble finding Leda, until you realise she's in the spot you should have looked in the first place. And the spot you should have looked *is* the first place.

-> leda_wins

=leda_wins

You descend and land amongst a section of the crowd cheering by the finish line. Different parts of the audience are still dutifully cheering their loved ones on but it's clear that this is a run race: one kayak surges ahead of the pack and speeds past the line with the next contender still several boat lengths away. 

By the time the boat slows to a stop by the pier you've already reverted to human form. Leda spots you and grins as her teammates stand up and begin to disembark. "You were carrying them!" you say, responding with a little grin of your own. "Great!" she retorts without missing a beat. "Now you can carry me."

Taking her cue, you step into the boat and she wraps her arms around you. You lift her up and carry her with both arms to the end of the pier where her coach waits with her wheelchair. She barely has time to shout out a "Thanks!" before she's whisked off to have a multitude of photos taken with her team. You slump yourself into a nearby chair and watch the commotion from a safe distance.

After around twenty minutes, by which time you are certain that the media pack have taken All Of The Photos, Leda wheels her way over to you. 

Leda: Well, you're still here so I guess you're waiting for me.
Zeus: How do you know that? I might be here for the races.
Leda: You've never been here before in your life and you seem to visibly despise almost everyone here.
Zeus: Wow. Is it that obvious?
Leda: You look like a celiac who's been accidentally locked inside a bakery.
Zeus: ...
Leda: You wanna get out of here? I'm going to pre-emptively assume you'll say yes. Hop on board, Zeusy.

And with that she charges towards you, knocking you over and into her chair. You scramble to right yourself while she continues to roll through the crowd, seemingly without regard for the people crossing her path but somehow always finding a path through. She hoots with glee with every near-miss while you cling to the chair terrified beyond your wits. Eventually the crowd thins and you come to a quiet part of a river, away from the boat club.

Leda: Enjoy the ride?
Zeus: You what? You could have killed us out there.
Leda: Aww, it's okay. You can thank me later.
Zeus: What is this place, anyway?
Leda: Just a quiet place where I come to be alone. Away from all that bullshit.
Zeus: It's beautiful here. Wait, you come here to be alone? Maybe I should leave.
Leda: No! I want to show you something.

Leda begins to wheel towards an alcove of trees a few hundred yards away but suddenly stops.

Leda: HEY GET AWAY FROM THAT!!

She continues furiously towards the alcove. Confused, you run after her.

Leda: I SAID KEEP AWAY, YOU JERKS!

As you reach the alcove you see a group of three Rough Looking Dudes(tm) standing around something you can't see. 

Asshole: Oh look! A little crippled girl thinks she can tell me what to do!

Leda: Just fuck off, okay?

Asshole: Well, that does it.

He strides up to Leda and kicks her wheelchair over, sending her flying from her seat. 

Zeus: Hey!

You rush over to Leda to help her up.

Leda: I'm fine, just don't let them get the egg!

Zeus: The egg?!?

Asshole: Hey you, cripple lover! Whaddya say we put you in a wheelchair too?

Oh, it is most definitely shape-shifting time.

-> fight

=fight


* [Cloud]

You assume your cloud form and proceed to engulf their leader.

-> cloud_control


* [Bull]

You assume your bull form and stare down their leader, scraping your foot against the ground in that way that bulls always do in movies. 

Asshole: ...

The leader of the group starts to back away, leaving the other two standing agog on the spot.

Asshole: ...

Bollocks to this. You charge at the two henchmen and sucessfuly gore the two of them with your horns. You raise your head and carry them while you continue running towards their leader, now sprinting for his life .

Asshole: YAAAAAH!

As you reach him you jump at him, knocking him over with your front legs and then landing on him. The sudden loss of momentum sends the two henchmen flying off your horns, clutching their now engorged wounds as they sail through the air. You step off the leader and the three of them scramble away nursing their wounds

->fight_is_won




* [Lightning] 
-> fight_with_lightning




* [Eagle] You assume the form of an eagle and fly towards their leader. You pick him up with your talons and carry him high into the air before dumping him into the river. His friends are visibly shaken but they hold their postion by the alcove, so you fly back and grab another one. By the time you've dropped the second one in the river the third has wisely decided to scarper

->fight_is_won



=cloud_control
Asshole: What is this, some Penn and Teller shit? Come out and fight, or we might just have our way with your cripple girlfriend over there!

* [Fuck this guy: Shapeshift into bull]

While still wrapped around him, you assume your bull form. You materialize inside him and immediately burst through his body, sending chunks of flesh in every direction. His friends run away screaming.

-> fight_is_won


* [Fuck this guy: Shapeshift into lightning]
-> fight_with_lightning


=fight_with_lightning
This is too easy. You shapeshift into a bolt of lightning and proceed to electrocute the three of them. They collapse to the ground, smoke billowing from their bodies.
->fight_is_won


=fight_is_won

You revert to your human form and look for Leda.

Leda: Over here!

You find her deep in the alcove, standing guard by a large white egg.

Zeus: ...
Leda: I know, right? I don't know where the mother is, I just found it like this earlier today. It was still warm and I didn't know what to do so I wrapped it in my jacket to keep it warm while I entered the race. I don't know if I should try to move it or leave it he-- OMIGOD IT'S HATCHING. Quick, come sit down!

You sit next to Leda and together you watch the egg slowly hatch. When it's done four beautiful baby swans sit before you.

Zeus: ...

Leda: Aren't they amazing? 
Zeus: They're beautiful.
Leda: I never thought I'd be a mother... wait, something's wrong.

The baby swans are beginning to squawk and run around.

Leda: I think they're fretting because their mother's not here. I don't know what to do.
Zeus: Don't worry. I think I can help.
-> swan_time


=swan_time

* [Shapeshift into swan] 
You assume your swan form and walk up to the babies. They take to you immediately, nestling under your wing and quickly going to sleep. 

Leda: I... I don't know what do say.
Swan: It's OK! I'm just a god is all.
Leda: Oh.
Swan: ...
Leda: Umm... do you mind if I join you?
Swan: That would actually be awesome.

Leda drops down from her wheelchair and shuffles over to you, and you both drift off to a peaceful sleep.

Hera: ZEUS!
Swan: Gah, for heaven's sa--
Hera: Oh, this is some messed up shit.
Swan: It's not what it looks like.
Hera: Zeus, you are going down, and not in the innuendo kind of way.
Zeus: But we didn't do anything! How did you find me, anyway?
Swan: When you didn't come home I asked around the university, and a bunch of people said they saw you joyriding around the Boat Club with Miss Wheels over there.
Leda: *Yawn* ... What's going on.
Swan: Ahhh, Leda... this is my lovely wife Hera.
Leda: Oh... nice to meet--
Swan: Can it hussy! Is this your new angle, Zeus? You've slept with all the able-bodied women on campus so now you're working through the disabled ones?
Swan: For the love of Hades, can we keep her paraplegia out of this?
Swan: You can't keep your anything out of anything! And what's with this whole swan thing? Are you going to want me dressing up in a costume like Bjork?
Leda: Is she always like this?
Swan: Oh, most definitely.
Leda: I'm so sorry.
Hera: We're going straight back to Olympus now, mister. 

Hera changes her form and does that annoying wispy thing she does up and out of the alcove. You change back to your human form.

Zeus: Geez, I'm sorry about that.
Leda: It's alright. I kind of figured you'd be married.
Zeus: It's weird. I got busted for cheating and also wound up with four kids and we didn't even get to do it.
Leda: You will look after them?
Zeus: Of course I will! I mean, I'll have to find somewhere to keep them where Hera won't try to eat them but figure something out. Will you be OK?
Leda: Me? Grade A student and noted disability spokesperson on the verge of a lucrative sporting career? Yeah, I think I'll manage.
Zeus: Ooookay then. We'll, I'd better be get home before Hera starts plotting to kill you.
Leda: Why don't you just divorce her?
Zeus: Ah, it's complicated.
Leda: It always is. Goodbye, Zeus.

BACKGROUND olympus
Hera: Zeus! Time to clean the toilets again, you unfaithful piece of horse sputum!
Zeus: You know, Helen, I wish I was able to turn HER into a swan.
Cygnet: Coo!
Zeus: You know what type of swan?
Cygnet Coo?
Zeus: A MUTE SWAN.
Cygnet: Coo! Coo! Coo!
Hera: ZEUS!!!

-> DONE