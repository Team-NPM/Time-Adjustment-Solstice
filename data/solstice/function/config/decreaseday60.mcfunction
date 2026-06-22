execute if score Solstice.Mode Solstice matches 0 run return run function solstice:config/setdecreaseday60
execute if score Solstice.Mode Solstice matches 1 if score Solstice.Day.Total Solstice matches 61.. run function solstice:config/ratiodecreaseday60
