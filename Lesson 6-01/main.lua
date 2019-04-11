-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local calculateButton = display.newImageRect( "calculateButton.png", 125, 50 )
calculateButton.x = 160
calculateButton.y = 390
calculateButton.id = " calculateButton "


local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 50, 200, 30 )
answerTextField.id = "answer textField"

display.setDefault ( "background", 177/255, 118/255, 202/255 )

math.randomseed( os.time() )

local numberToGuess = math.random( 1, 2 )

local answerAsNumber = tonumber( answerTextField.text )

print( "Pick a number from 1 to 6: " )


local function calculateButtontouch ( event)

	if numberToGuess == answerAsNumber then

    print( "Correct" )

	else

		print( "Wrong, guess again!")

		print( "Correct answer was " ..numberToGuess )

	end

	print( "The correct answer was", numberToGuess )

	print( "Please play again!" )

end



calculateButton :addEventListener( "touch", calculateButtontouch )