scoreboard players operation Solstice.Day.Total Solstice = Solstice.Day.Total BACKUP.Solstice
scoreboard players operation Solstice.Night.Total Solstice = Solstice.Night.Total BACKUP.Solstice
scoreboard objectives remove BACKUP.Solstice
tellraw @a {"text": "Time Adjustment: Solstice has been successfully updated!", "color": "dark_gray", "italic": true}
