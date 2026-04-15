scoreboard objectives add BACKUP.Solstice dummy
scoreboard players set BACKUP.Solstice BACKUP.Solstice 1
scoreboard players operation Solstice.Day.Total BACKUP.Solstice = Solstice.Day.Total Solstice
scoreboard players operation Solstice.Night.Total BACKUP.Solstice = Solstice.Night.Total Solstice
scoreboard objectives remove Solstice
tellraw @s {"text": "To complete the update: ", "color": "white"}
tellraw @s [{"text": "1. Run ", "color": "white"}, {"text": "/datapack disable \"file/TimeAdjust-Solstice_", "color": "red", "clickEvent": {"action": "suggest_command", "value": "/datapack disable \"file/TimeAdjust-Solstice_"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to run (must have sufficient permissions)"}}}, {"text": ", using tab completion to select the correct version", "color": "white"}]
tellraw @s [{"text": "2. ", "color": "white"}, {"text": "Download", "color": "blue", "clickEvent": {"action": "open_url", "value": "https://modrinth.com/datapack/time-adjustment-solstice/versions"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to open official Modrinth page"}}}, {"text": " a newer version of Time Adjustment", "color": "white"}]
tellraw @s {"text": "3. Remove the current version of Time Adjustment: Solstice from the datapack folder and place the newer version in the datapack folder"}
tellraw @s [{"text": "4. Run ", "color": "white"}, {"text": "/datapack list available", "color": "green", "clickEvent": {"action": "run_command", "value": "/datapack list available"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to run (must have sufficient permissions)"}}}, {"text": " to see new datapacks"}]
tellraw @s [{"text": "5. Run ", "color": "white"}, {"text": "/datapack enable \"file/TimeAdjust-Solstice_", "color": "green", "clickEvent": {"action": "suggest_command", "value": "/datapack enable \"file/TimeAdjust-Solstice_"}, "hoverEvent": {"action": "show_text", "value": {"text": "Click to run (must have sufficient permissions)"}}}, {"text": ", using tab completion to select the correct version"}]
