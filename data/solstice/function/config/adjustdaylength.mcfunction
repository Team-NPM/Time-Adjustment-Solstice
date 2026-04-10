$scoreboard players set Solstice.Day.Total Solstice $(hours)
scoreboard players operation Solstice.Day.Total Solstice *= #Solstice.60 Solstice
$scoreboard players add Solstice.Day.Total Solstice $(minutes)
execute if score Solstice.Day.Total Solstice matches ..-1 run scoreboard players operation Solstice.Day.Total Solstice *= #Solstice.-1 Solstice
execute if score Solstice.Mode Solstice matches 1 run function solstice:config/ratiodaylength
function solstice:.config
