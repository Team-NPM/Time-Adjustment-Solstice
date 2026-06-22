execute store result score Solstice.CurrTime Solstice run time query daytime
execute if score Solstice.CurrTime Solstice matches 13000.. run function solstice:night
execute if score Solstice.CurrTime Solstice matches ..12999 run function solstice:day
execute if score TimeAdjust.Total TimeAdjust matches 20.. run return run function solstice:scheduletick with storage timeadjust:data
schedule function solstice:tick 1t replace
