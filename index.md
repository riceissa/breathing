---
title: My thoughts on breathing, with an emphasis on dealing with chronic shortness of breath
author: Issa Rice
date: 2024-01-24
---

THIS IS A DRAFT.  THIS IS NOT PERSONALIZED MEDICAL ADVICE.  USE AT YOUR OWN RISK. (at the same time, i _am_ interested in improving this document, so if you think i am recommending something unsafe i'd like to know about it)


I am writing basically the document I wish someone had handed to me over a decade ago when I first started to experience shortness of breath.

# On ruling out more serious medical problems

I think as a first step, it's a good idea to rule out any standard problems with the lungs, by e.g.\ doing a chest x-ray, pulmonary function test, etc. I will say more about what tests I got done and why. The breathing stuff I describe later in the document _might_ help with your breathing anyway, even if you have a problem with your lungs, but you definitely want to know if you do have problems and to get proper treatment.

[TODO: add more details]


# Safety

I want to make two seemingly contradictory remarks about the safety of trying various breathing techniques.

1. Because I am _already_ experiencing significant shortness of breath, just by breathing the way I already am, I have a greater appetite/tolerance for air hunger and unsafe breathing. Whether I like it or not, I am already experiencing some significant amount of risk just by existing in my current way.

2. I have the impression that a lot of breathing coaches and such don't emphasize safety enough. One of the reasons I didn't get into Buteyko breathing earlier (despite having known about it since early 2022 or so) is that I was put off by how dangerous it seemed.

When I started practicing silent nasal breathing, I got a few weird symptoms including head pressure, throat tightening (it felt as if I was being subtly choked), and possibly others. (Since I have a mysterious chronic illness, I have a daily occurrence of weird physical symptoms, so I am already quite used to dealing with random new symptoms, and it's often hard to pin down _why_ a new symptom started happening, but in the case of head pressure and throat tightening, I am pretty confident it happens because of the breathing.)

The other thing I want to say about safety.  It's not helpful when people just tell you a blanket "if you have health issues, don't attempt this". Part of _why_ I'm interested in fixing my breathing is because I already have breathing and other health issues. I shouldn't automatically be turned away from trying to solve these issues! So, I don't want to _ignore_ safety issues, but I also don't want to give useless cowardly ass-covering safety warnings. How to avoid both problems?


# The simple math of respiration (acid--base balance, bicarbonate buffer model, and the Henderson--Hasselbalch equation)

The aim of this section is to give you a useful mechanistic model of how respiration works. I will skip a lot of details because while it's helpful to know them, they aren't essential.

The central thing we're trying to explain here is: why is it that if you have shortness of breath, the right thing to do is the breathe _less_, even though your body is telling you to breathe _more_? What is going on at the chemical level when people have shortness of breath?

(This is sort of like [Howard Cooper's video](https://www.youtube.com/watch?v=XliOGg8Tl98 "Help with air hunger - I have anxiety and feel like I can't breathe!") on air hunger, but there are a few things I don't like about his explanation, so I'm going to be writing my own ideal version. But if you prefer a video explanation, then you can start with the video and then come back here.)

What causes the urge to breathe? Humans have what are called chemoreceptors in their brain (and some other places) that tell the body to breathe. How do chemoreceptors know _when_ to breathe? They watch out for signals from the body, in the form of carbon dioxide levels, oxygen levels, and blood pH. Most of the time, when people breathe, it is because the carbon dioxide level increased above some threshold. Oxygen only triggers breathing when it gets really low (so low that I don't think most humans experience it except on very rare occasions). I think blood pH also matters, but maybe only during exercise? (but it might matter more for air hunger; see below).

[argh, this is kind of hard to explain well. curse of knowledge...]

Okay, so CO~2~ levels (partial pressure?) in the blood regulate breathing. Now let's imagine what happens when someone overbreathes. You might think, okay, CO~2~ goes down, so then you don't get as much of an urge to breathe. That's true in the short term. But if someone _chronically_ overbreathes, then the bodies tries to correct this. You see, the body tries very hard to keep the blood pH at a narrow range of 7.35--7.45. If one chronically overbreathes, then since CO~2~ causes the blood to become acidic, the _lack_ of CO~2~ (you're overbreathing, remember) causes your blood to become too alkaline. So the body compensates by trying to make blood more acidic. How? The kidneys dump out more bicarbonate ($\mathrm{HCO_3^-}$) into the urine. Since bicarbonate is alkaline, getting rid of it makes the blood more acidic. The kidneys don't react immediately; all this happens over the course of hours to roughly 5 days.

[... some more stuff here ...]

The important point is that because of the form of the Henderson--Hasselbalch equation, the more CO~2~ you have, the less sensitive pH is to slight increases in CO~2~. So breath holding for a few seconds does not cause air hunger/panic. Whereas if your CO~2~ is already too low (hypocapnia), then your pH is still normal (thanks to the bicarbonate levels being adjusted by your kidneys), but because of the low CO~2~, even slight changes in CO~2~ can cause large shifts in pH. I think it's this increase in pH that triggers a strong sense of air hunger. If you give in to this urge and breathe, then your pH will be restored, so _temporarily_ you will feel better. But if you keep giving into this urge and breathing more and more, then over time you're shifting down your bicarbonate buffer even more. Your body adjusts. But that means your baseline CO~2~ also keeps decreasing. So now you're _even more_ sensitive to slight increases in CO~2~. It's a vicious cycle.

Let's look at some numbers.

$$7.4 \approx 6.1 + \log_{10}\left(\frac{24}{0.0307 \cdot 40}\right)$$

above are the values for a normal person.

When I first used a capnometer, my CO~2~ was around 25\ mmHg. So to get the same pH, my bicarbonate level must have been around 15:

$$7.4 \approx 6.1 + \log_{10}\left(\frac{15}{0.0307 \cdot 25}\right)$$

Now let's say both individuals do a breath hold to raise their PCO~2~ by 5\ mmHg. In the case of the healthy person, their pH goes down to 7.34, but in the chronic overbreather's case, it goes down to 7.31.


So what we've established is:

- If you have shortness of breath with no clear medical cause, it is likely that your CO~2~ (and thus bicarbonate) levels are too low.
- Low CO~2~ means you are more sensitive to changes in CO~2~, in particular to increases in it. This is why you always feel short of breath.
- The solution is _not_ to "take a deep breath" and get more oxygen, but rather, to breathe _less_ so that you gradually raise your CO~2~ levels. The emphasis is on the word "gradually". If you just hold your breath in the hopes of raising your CO~2~, you will just give yourself a panic attack. The kidneys take time to adjust the bicarbonate levels. So you want to sit with a slight-to-moderate amount of air hunger, over the course of days and weeks, so as to gradually raise your baseline CO~2~. How to do this? We'll discuss breathing techniques and breathing habits more elsewhere in this document.


What does Howard Cooper's explanation get wrong?

- In the initial video, he doesn't give any mechanism for why people with air hunger are more sensitive to CO~2~ buildup. He just says that it's like people who are sensitive to alcohol.  But why does your level of CO~2~ affect how sensitive you are to buildup of CO~2~? It's completely mysterious.
- In the second video, he tries to give an explanation in terms of the bicarbonate buffer model. The problem is, in his analogy with the water levels, _everything is on an additive scale_. The inferred version of the Henderson-Hasselbalch equation becomes $-\mathrm{pH} = -\mathrm{CO_2} + \mathrm{HCO_3^-}$ ($\text{water level} = -\text{water leaving} + \text{water entering}$). A healthy person and a chronic overbreather will _both_ have the same buildup of CO~2~ when they hold their breath. So why does the chronic overbreather have a lower Control Pause? His model can't explain this. You need to look at the real Henderson-Hasselbalch equation, with the log and fraction, to understand this.


more notes on howard cooper videos:

video 1: <https://invidious.slipfox.xyz/watch?v=XliOGg8Tl98>

(why am i making such a big deal out of his videos? it's because it's the first resource that really made things click for me. it's what got me to start doing breath pauses and nasal breathing. but it wasn't sufficient because it got the theory a bit wrong and also didn't have a good solution other than "do some breath pauses" which i now think are not the most effective way to cure air hunger. so, i want to take the good stuff from this video while also correcting the stuff it got wrong.)

sequence/flow of the video (first person pronoun is from the perspective of howard cooper):

- this video is about air hunger and anxiety
- i personally had air hunger, and it was real bad
- but people told me to do breathing exercises: this just made it worse! being conscious of my breathing made it worse.
- there is a physical cause of air hunger; it's not in your head.
- caveat: but make sure you get checked out by a doctor. the rest of this video assumes you have nothing obviously wrong.
- carbon dioxide: cells take in oxygen and release CO2. when CO2 builds up, you get an urge to breathe.
- anxiety -> overbreathing. "take deep breaths".
- if you have overbreathing for a long time, your CO2 levels go down. your body makes adjustments to the low levels of CO2, and one of these is to become very sensitive to any increase in CO2 [this is WRONG. it's the low level itself that makes you sensitive, not due to any adjustment, as far as i know.]
- alcohol tolerance analogy.
- so what's the cure? gradually expose yourself to more and more CO2, so your body gets used to it.
- "take a deep breath": the worst advice you can give.
- strategies for dealing with air hunger:
  1. sit with the feeling of air hunger, and do shallow breathing.
  2. breathe through your nose. you can even tape your mouth. shoutout to buteyko method.
  3. control pause test introduced. [unfortunately, he doesn't explain it very well. in particular, he doesn't mention that you shouldn't breathe any differently AFTER the test is completed. lol and he even _does it wrong_ in the video by doing an audible inhale after the test!!!] control pause as a marker of your CO2 tolerance.
  4. reduced breathing exercise: you want a manageable amount of air hunger for "a period of time". halve your CP, then do a breath hold for that many seconds, take in some normal breaths, repeat. [i think buteyko people distinguish between reduced breathing and breath holds, and this is a breath hold exercise.] 20 second CP as a marker of normal. exercise while reduced breathing is mentioned. anxiety also improves as CP increases.
  5. avoid ruminating. tell yourself that mild air hunger is ok.

video 2: <https://invidious.slipfox.xyz/watch?v=RLMjvDYJL6Q>

sequence/flow of the video (first person pronoun is from the perspective of howard cooper):

- this video is about air hunger.
- check with doctor first.
- CO~2~ isn't all bad -- but doesn't elaborate.
- urge to breathe comes from increase in CO~2~.
- The "sciencey bit":
  - pH of blood is very important. so important that body will prioritize keeping pH in a certain range over keeping you comfortable with your breathing.
  - CO~2~ causes blood to become acidic -> carbonic acid. the big reason your body breathes is to regulate pH.
  - water tank is analogy for pH level (it's actually the "strength of acid" or $-\mathrm{pH}$). water flowing out is CO~2~ being breathed out; 1 tap means normal breathing; 2 taps means you're overbreathing. he then says a confusing thing. he says the water coming from the sink is "a bunch of systems the body has in place to maintain equilibrium". i think this is wrong. what's going on instead is that your body produces more CO~2~ as part of normal metabolic functioning. so that should be what the sink water represents. if you overbreathe, the second tap in the tank opens. water level (acidity) starts to go down. water pitcher = bicarbonate buffer (makes blood more acidic). actually this is the other confusing thing in this analogy. it's not that more bicarbonate is being dumped into the body to make it more acidic -- that would be the opposite, since bicarbonate is alkaline. instead, the body is getting _rid_ of more bicarbonate in the urine, so as to make it _less_ alkaline, aka more acidic. the water level analogy is just too primitive to be able to get all the signs right and i haven't even begun to critique the additive nature of it... But then he shows that if you turn the second tap off, then water level goes up (because the pitcher water is still coming in, as kidneys take time to adjust) = your blood gets more acidic, aka you get air hunger.
  - and THEN he says, after all that, "in other words, your body becomes hypersensitive to any increase in CO~2~". this is the part that is most wrong about this video, although i'm still a bit confused about this. it's true that if the overbreather holds their breath, their water level increases faster than the normal breather's because the pitcher is pouring in extra water. but i think this is not what's happening. the other incorrect interpretation i had was that the inflow and outflow are the same, it's just the bicarbonate levels being different, so both the overbreather and normal breather should have equivalent buildup of CO~2~ in the same amount of time, which wouldn't explain why the overbreather is more sensitive to that same amount of CO~2~ buildup. hmm so actually the water analogy may be more correct that i thought -- the chronic overbreather has to overbreathe to maintain the pH, which means more bicarbonate has to be leaving; the bicarbonate isn't just a static thing, it's also the rate that matters. BUT the bicarbonate levels are essentially static wrt a single breath. so i'm confused. the water analogy is wrong because it shows everything on a similar timescale and on the same additive scale. chronic overbreathing seems to change the bicarbonate levels to a certain extent, but then the bicarb level settles after a while. why? ok maybe what's going on is that each style of breathing has an "equilibrium CO2" level that i goes to. so my old breathing style would go to 25--30mmHg, but breathing in this style forever wouldn't actually lower CO2 more and more, it just asymptotes for some reason. if that's the case, then if you breathe like a normal person or you hold your breath, then it's still not because of the bicarbonate level that you get air hunger more easily; it's still because of the CO~2~ levels. so the howard cooper video is still wrong.
- need to gradually increase CO2 levels.
- anxiety cycle -- being hyperfixated to breathing. anxiety causes you to overbreathe, and you maintain your air hunger, and the air hunger makes you more worried about breathing. so there's a vicious cycle. so need to treat both breathing and anxiety.

