execute unless entity @r[advancements={global:timeadjust=true}] run return run tellraw @a [{"text": "!! WARNING !! TIME ADJUSTMENT: SOLSTICE CANNOT RUN WITHOUT TIME ADJUSTMENT. PLEASE INSTALL IT ","color": "red"},{"text": "HERE", "color": "blue", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://modrinth.com/datapack/time-adjustment"}}]
scoreboard objectives add Solstice dummy
execute if score BACKUP.Solstice BACKUP.Solstice matches 1 run function solstice:loadbackup
execute unless score Solstice.Day.Total Solstice matches 0.. run function solstice:firsttimesetup
execute if score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run function solstice:tick
