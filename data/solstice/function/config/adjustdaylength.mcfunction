$scoreboard players set Solstice.Day.Total Solstice $(hours)
scoreboard players operation Solstice.Day.Total Solstice *= #TimeAdjust.60 TimeAdjust
$scoreboard players add Solstice.Day.Total Solstice $(minutes)
execute if score Solstice.Day.Total Solstice matches ..-1 run scoreboard players operation Solstice.Day.Total Solstice *= #TimeAdjust.-1 TimeAdjust
execute if score Solstice.Mode Solstice matches 1 run function solstice:config/ratiodaylength
function solstice:.config
