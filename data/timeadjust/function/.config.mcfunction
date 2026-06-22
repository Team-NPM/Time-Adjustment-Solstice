# Do correct math
    scoreboard players operation TimeAdjust.Display.Minutes TimeAdjust = Solstice.Day.Total Solstice
    scoreboard players operation TimeAdjust.Display.Minutes TimeAdjust += Solstice.Night.Total Solstice
    scoreboard players operation TimeAdjust.Display.Hours TimeAdjust = TimeAdjust.Display.Minutes TimeAdjust
    scoreboard players operation TimeAdjust.Display.Minutes TimeAdjust %= #TimeAdjust.60 TimeAdjust
    scoreboard players operation TimeAdjust.Display.Hours TimeAdjust /= #TimeAdjust.60 TimeAdjust

# Clear Chat
    tellraw @s {"text": "\n\n\n\n\n\n\n\n\n"}

# Title Bar
    tellraw @s {"text": "■▬▬▬▬▬ Time Adjustment Configuration ▬▬▬▬▬■", "bold": true, "color": "gold"}

# Inform user of slimmed menu
    tellraw @s {"text": "Please use Time Adjustment: Solstice config to change time.", "color": "red"}

# Show Time
    tellraw @s [{"text": "Day Length: ", "color": "yellow", "bold": false}, {"score": {"name": "TimeAdjust.Display.Hours", "objective": "TimeAdjust"}, "color": "green", "bold": true}, {"text": " hours, ", "color": "yellow", "bold": false}, {"score": {"name": "TimeAdjust.Display.Minutes", "objective": "TimeAdjust"}, "color": "green", "bold": true}, {"text": " minutes", "color": "yellow", "bold": false}]

# Do Daylight Cycle
    execute if score TimeAdjust.DoDaylightCycle TimeAdjust matches 0 run tellraw @s [{"text": "Daylight Cycle: [", "color": "yellow", "bold": false}, {"text": "Disabled", "color": "red", "bold": true, "clickEvent": {"action": "run_command", "value": "/function timeadjust:config/enabledaylightcycle"}}, {"text": "]", "color": "yellow", "bold": false}]
    execute if score TimeAdjust.DoDaylightCycle TimeAdjust matches 1 run tellraw @s [{"text": "Daylight Cycle: [", "color": "yellow", "bold": false}, {"text": "Enabled", "color": "green", "bold": true, "clickEvent": {"action": "run_command", "value": "/function timeadjust:config/disabledaylightcycle"}}, {"text": "]", "color": "yellow", "bold": false}]

# Separator
    tellraw @s {"text": ""}

# TA: Solstice Config
    tellraw @s {"text": "Time Adjustment: Solstice Config", "color": "gold", "bold": true, "clickEvent": {"action": "run_command", "value": "/function solstice:.config"}}

# Update
    tellraw @s {"text": "Update Datapack", "bold": true, "color": "green", "hoverEvent": {"action": "show_text", "value": {"text": "Release 2.1.0+", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/function timeadjust:backup"}}

# Uninstall
    tellraw @s {"text": "Uninstall Datapack", "bold": true, "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "!! WARNING !! This is irriversible!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/function timeadjust:uninstall"}}

# Bottom
    tellraw @s {"text": "■▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬■", "color": "gold", "bold": true}
