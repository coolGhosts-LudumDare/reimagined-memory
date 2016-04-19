=== clock_tower ===

BACKGROUND clockTowerOutside

You approach the tall tower. It's tall. It's a tower. Hold on. I forgot clock.
Clock tower. The tall clock tower. Tall, towering, and clocky.
Nice.
* [Jump] You try to jump onto the roof, but only make it a foot (30.48cm) off the ground. I don't know why you bothered trying. So you just walk in through the door. -> clock_interior
* [Use the door] You grip the doorknob firmly in your hand and turn it. You push against the door. But nothing happens.
You try pulling the door. Something happens. Shock horror: the door opens! Who would've believed it, eh? You skulk inside like a typoed skunk. -> clock_interior

= clock_interior
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
* [Lightning] You decide to become Lightning.
Zeus: Remain standing back!
Your skin frizzles with electric energy. Wham! You're a lightning bolt.
Lightning: I hadn't thought this through!
You earth to the nearest metal object: the door handle. It promptly melts leaving a red hot lump that's no use to anyone anymore. Good work.
-> shapeshift_danae
* [Cloud]
Zeus: OK, you don't need to be as standing back now. I don't think even I could hurt you while being a soft billowy cloud.
Danae: You what?
Zeus: Oh, forget it.
Puff! You're a cloud.
-> cloud_danae.
* [Bull] You will take on the form of a bull.
This could be fun. Let me just get some popcorn.
...
OK.
Zeus: Could you please go as far back and remain as un-matador-like as you can?
Danae: I don't like the sound of this.
Ignore her. This is the best idea ever.
Flink! You're a bull. The wooden landing below you creaks with the sudden weight of your bulk.
-> bull_landing
* [Light] You're gonna give this Light thing a try.
Zeus: Stand back. Unless you like being tanned.
Zeus: That might be how this works, I'm not really sure.
Zeus: Anyway. Stand back. Away from the door.
Danae: *mumble mumble*
Zeus: What? I didn't hear you cos
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
Bull: Um... That was a practise run.
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
Before you know it, you're on the other side. -> in_clock
* [Just stay where I am, thanks] You remain in place. As much as a wild bundle of particles can remain in one place, anyway.
In fact, anyone with a passing interest in particle physics will know how particles can suddenly be somewhere else entirely.
And lo and behold, wouldn't you know it, at this very instant all of your particles have shifted over to the other side of the door. What are the chances? -> in_clock

= in_clock
BACKGROUND clockTowerInside
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
CHOOM! You're lightning, you are.
-> lightning_interior
* [Cloud] You foof into a cloud and are immediately sucked into the fan. After spinning you around a couple of times, it spits you out and the wind forces you back out through the keyhole.
BACKGROUND door
Once again on the wrong side of the door, you shapeshift into light to get back to Danae.
BACKGROUND clockTowerInside
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
* [Lightning] You crackle into a bolt of lightning and touch another of the birds, but it's no good. They're all de-feathered. And trying to Frankenstein them simply won't work. You'll have to use a different form.
-> next_stage
* [Cloud] You shoomf into a cloud and are immediately sucked into the fan and out through the keyhole.
BACKGROUND door
You pulse into lightning to get back into the feather-floored room.
BACKGROUND clockTowerInside
Another angle will have to be considered.
-> next_stage
* [Bull] You growl into a bull.
-> bull_interior
* [Light] You shimmer into light. You feel very sparkly but ultimately useless in the current situation. Maybe choose a different form.
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
Danae: Wheeee!
Danae lands in the middle of the pile of feathers that's built up at the base of the clock tower.
Danae: That was great. Come on down.
Zeus: Just coming. Yaaaah!
You settle amongst the feathers beside her.
Zeus: Hey, these feathers are pretty handy. That gives me a super duper idea.
Zeus: Wubadubbadubbaah!

NEW TRANSFORMATION ACQUIRED. You are now able to shapeshift into the form of a bird!

You can choose from any of the birds of the world
to be a swan, an eagle, or a cuckoo.
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
-> END