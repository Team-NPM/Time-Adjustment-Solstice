$scoreboard players set Solstice.Night.Total Solstice $(hours)
scoreboard players operation Solstice.Night.Total Solstice *= #TimeAdjust.60 TimeAdjust
$scoreboard players add Solstice.Night.Total Solstice $(minutes)
execute if score Solstice.Night.Total Solstice matches ..-1 run scoreboard players operation Solstice.Night.Total Solstice *= #TimeAdjust.-1 TimeAdjust
execute if score Solstice.Mode Solstice matches 1 run function solstice:config/rationightlength
function solstice:.config
