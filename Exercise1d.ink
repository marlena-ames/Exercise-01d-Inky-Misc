/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR haveShells=false



-> seashore

== seashore ==
You are sitting on the beach. {&The sand feels warm between your toes.|You think you see fish in the distance.|You wave to a passing boat.}

It is {advance_time()}

+ [Stroll down the beach] -> beach2
+ {time==2}[The darkness brings out light from a nearby cave.]
-> cave

== beach2 ==
This is further down the beach.

+ [Move back up the beach] -> seashore
*{time==1} [Pick up some seashells.] ->shells

== shells ==
You pick up the shells.
~haveShells=true

-> beach2

== cave ==
You follow the light to the cave. It's coming from a fire started by the man inside.

"I am the hat man," he says.

"You sell hats?" you ask, stupidly.

"I sell a single hat." He points to his head, where an admittedly nice hat sits. "I'll sell it to you for a few seashells."

+ {not haveShells} "I don't have any sheashells."
->noShells
+ {haveShells} "I have your seashells."
->hat

=noShells
"Then get out of my cave!" yells the hat man, who promptly shoos you back to the beach.
->seashore

=hat
The hat man accepts the shells from you gratefully. 

"Finally..." he whispers reverently, before turning and gingerly placing the shells on top of a fairly lifelike carving of a hermit crab. "A deal is a deal. Take good care of my hat."

The now hatless man gingerly places his ex-hat on top of your head.

You are now the hat man. You have won the game, and frankly - life itself. The hatless man gathers his hermit crab carvings and leaves, walking into the ocean to never be seen again. 

You take up a piece of wood to begin your own carving of a hermit crab. If only someone would find a shell for you, it would be perfect.

->END

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
        
    ~ return time
    
    
    
