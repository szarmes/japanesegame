Notes:

The main.lua file is just used for testing/debugging individual games. It doesn't have any purpose besides that.

There are extra audio files in the audio folder that don't correspond to any of the questions. If more space is needed for the program, some of these could be deleted.

-- For all games

The blue box is the audio box. Hitting it triggers the audio sample for whatever vocab is in the question. This blue rectangle should probably be replaced with an image
resembling audio with a transparent background. There is a speaker image in the art folder for Game3 but it is 600x600.

For loading each game, just call the Game1(), Game2(), and Game3() functions.

I've commented everywhere that I know the japanese/grammer is broken, or I've had to use an english word in the question because I can't figure out the hiragana.
The answers for Games 2 and 3 are in english, but this shouldn't matter because they will replaced with images.

A better system for randomizing questions in Games 2 and 3 could be implemented (having the question be random but also having the 3 choices that are given be random
and in random order).

-- Game 1

The player's choices are saved in the variables hair, gender, and nationality. They are set to local to avoid any bugs if any other games have vairables with the same name.
If the choices are going to be saved and used later, use these variables and don't keep them local.

-- Game 2

It is currently set that the player has 3 'lives', and if they get 3 questions wrong the game is over. If you want the player to have more lives, simply change that variable in Game2()
and then adjust enemyMove() so that the yakuza enemy moves towards where the player is supposed to be at the pace you want.

-- Games 2 and 3

The answers/choices the player can choose are rectangles with text on them instead of an image. When a properly sized image with a transparent background is put in the right folder
path, I've already set it up to switch from the rectangle to the image.

In the questions.lua file for example question[0] has
question[0].a1 = "art/Game2/bag.png"
question[0].a2 = "art/Game2/book.png"
question[0].a3 = "art/Game2/door.png"
question[0].t1 = "bag"
question[0].t2 = "book"
question[0].t3 = "door"

Currently the game is loading question[0].t1 for the first answer box, and .t2 for the second answer box etc. Instead it should be changed to .a1 for the first answer box
and so on, and the text and rectangle should be deleted. I hope this is simple enough.



