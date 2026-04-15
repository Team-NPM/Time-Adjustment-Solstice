execute store result score Solstice.CurrTime Solstice run time query daytime
execute if score Solstice.CurrTime Solstice matches 13000.. run scoreboard players operation TimeAdjust.Total TimeAdjust = Solstice.Night.Total Solstice
execute if score Solstice.CurrTime Solstice matches ..12999 run scoreboard players operation TimeAdjust.Total TimeAdjust = Solstice.Day.Total Solstice
$execute if score TimeAdjust.Total TimeAdjust matches 20.. run return run schedule function solstice:tick $(avgTick)t
schedule function solstice:tick 1t
