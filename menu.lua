---------------------------------------------------------------------------------
--
-- menu.lua
--
---------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local scene = storyboard.newScene()
require "dbFile"

---------------------------------------------------------------------------------
-- BEGINNING OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

local centerX = display.contentCenterX
local centerY = display.contentCenterY

local function goToGame1()
	storyboard.gotoScene("game1")
	storyboard.removeScene("menu")
end
local function goToGame2()
	storyboard.gotoScene("game2")
	storyboard.removeScene("menu")
end
local function goToGame3()
	storyboard.gotoScene("game3")
	storyboard.removeScene("menu")
end
local function goToNum()
	storyboard.gotoScene("numbers.numbers1")
	storyboard.removeScene("menu")
end

-- Called when the scene's view does not exist:
function scene:createScene( event )
	local screenGroup = self.view

	bg = display.newImage("images/bg.png", centerX,centerY+(30*yscale))
	--bg:scale(0.6*xscale,0.6*yscale)
	screenGroup:insert(bg)

	title = display.newImage("images/title.png", centerX,centerY-100*yscale)
	title:scale(0.6*xscale,0.6*yscale)
	screenGroup:insert(title)

	game1 = display.newImage("images/Character-Creation.png", centerX,centerY-10*yscale)
	game1:scale(0.4*xscale,0.4*yscale)
	game1:addEventListener("tap",goToGame1)
	screenGroup:insert(game1)

	game2 = display.newImage("images/Vocab.png", centerX,centerY+30*yscale)
	game2:scale(0.4*xscale,0.4*yscale)
	game2:addEventListener("tap",goToGame2)
	screenGroup:insert(game2)

	game3 = display.newImage("images/Food-Vocab.png", centerX,centerY+70*yscale)
	game3:scale(0.4*xscale,0.4*yscale)
	game3:addEventListener("tap",goToGame3)
	screenGroup:insert(game3)

	game4 = display.newImage("images/Numbers.png", centerX,centerY+110*yscale)
	game4:scale(0.4*xscale,0.4*yscale)
	game4:addEventListener("tap",goToNum)
	screenGroup:insert(game4)

	


end


-- Called immediately after scene has moved onscreen:
function scene:enterScene( event )
end


-- Called when scene is about to move offscreen:
function scene:exitScene( event )
end


-- Called prior to the removal of scene's "view" (display group)
function scene:destroyScene( event )
	
end




---------------------------------------------------------------------------------
-- END OF YOUR IMPLEMENTATION
---------------------------------------------------------------------------------

-- "createScene" event is dispatched if scene's view does not exist
scene:addEventListener( "createScene", scene )

-- "enterScene" event is dispatched whenever scene transition has finished
scene:addEventListener( "enterScene", scene )

-- "exitScene" event is dispatched before next scene's transition begins
scene:addEventListener( "exitScene", scene )

-- "destroyScene" event is dispatched before view is unloaded, which can be
-- automatically unloaded in low memory situations, or explicitly via a call to
-- storyboard.purgeScene() or storyboard.removeScene().
scene:addEventListener( "destroyScene", scene )

---------------------------------------------------------------------------------

return scene