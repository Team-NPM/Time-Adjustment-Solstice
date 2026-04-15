execute unless entity @s[advancements={global:timeadjust=true}] run return run tellraw @s [{"text": "!! WARNING !! TIME ADJUSTMENT: SOLSTICE CANNOT RUN WITHOUT TIME ADJUSTMENT. PLEASE INSTALL IT ","color": "red"},{"text": "HERE", "color": "blue", "underlined": true, "clickEvent": {"action": "open_url", "value": "https://modrinth.com/datapack/time-adjustment"}}]

# Calculate display numbers
    scoreboard players operation Solstice.Day.Display.Hours Solstice = Solstice.Day.Total Solstice
    scoreboard players operation Solstice.Day.Display.Minutes Solstice = Solstice.Day.Total Solstice
    scoreboard players operation Solstice.Day.Display.Hours Solstice /= #TimeAdjust.60 TimeAdjust
    scoreboard players operation Solstice.Day.Display.Minutes Solstice %= #TimeAdjust.60 TimeAdjust
    scoreboard players operation Solstice.Night.Display.Hours Solstice = Solstice.Night.Total Solstice
    scoreboard players operation Solstice.Night.Display.Minutes Solstice = Solstice.Night.Total Solstice
    scoreboard players operation Solstice.Night.Display.Hours Solstice /= #TimeAdjust.60 TimeAdjust
    scoreboard players operation Solstice.Night.Display.Minutes Solstice %= #TimeAdjust.60 TimeAdjust

# Clear Chat
    tellraw @s {"text": "\n\n\n\n\n\n\n\n\n"}

# Title Bar
    tellraw @s {"text": "■ Time Adjustment: Solstice Configuration ■", "bold": true, "color": "gold"}

# Display Times
    tellraw @s [{"text": "Day Length:  ", "color": "yellow", "bold": false}, {"score": {"name": "Solstice.Day.Display.Hours", "objective": "Solstice"}, "color": "green", "bold": true}, {"text": " hours, ", "color": "yellow", "bold": false}, {"score": {"name": "Solstice.Day.Display.Minutes", "objective": "Solstice"}, "color": "green", "bold": true}, {"text": " minutes", "color": "yellow", "bold": false}]
    tellraw @s [{"text": "Night Length: ", "color": "yellow", "bold": false}, {"score": {"name": "Solstice.Night.Display.Hours", "objective": "Solstice"}, "color": "green", "bold": true}, {"text": " hours, ", "color": "yellow", "bold": false}, {"score": {"name": "Solstice.Night.Display.Minutes", "objective": "Solstice"}, "color": "green", "bold": true}, {"text": " minutes", "color": "yellow", "bold": false}]

# Presets (Disabled for now. Too complex for me to handle atm)
# execute if score Solstice.Day.Total Solstice = Solstice.Night.Total Solstice run tellraw @s [{"text": "Presets: [", "color": "yellow"},{"text": "1:1", "color": "gold", "bold": true}, {"text": "] [", "color": "yellow", "bold": false}, {"text": "Summer Solstice", "color": "yellow", "bold": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/preset1"}}, {"text": "] [", "color": "yellow", "bold": false}, {"text": "Winter Solstice", "color": "yellow", "bold": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/preset2"}},{"text": "]", "color": "yellow", "bold": false}]

tellraw @s {"text": ""}

# Change Manual Adjustment Mode
    execute if score Solstice.Mode Solstice matches 0 run tellraw @s [{"text": "Adjustment Mode: [", "color": "yellow"}, {"text": "SET", "color": "green", "bold": true, "clickEvent": {"action": "run_command","value": "/function solstice:config/moderatio"}}, {"text": "]", "color": "yellow", "bold": false}]
    execute if score Solstice.Mode Solstice matches 1 run tellraw @s [{"text": "Adjustment Mode: [", "color": "yellow"}, {"text": "RATIO", "color": "red", "bold": true, "clickEvent": {"action": "run_command","value": "/function solstice:config/modeset"}}, {"text": "]", "color": "yellow", "bold": false}]

# Manual Adjustment
    tellraw @s [{"text": "[", "color": "yellow"}, {"text": "-05", "color": "red", "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreaseday5"}}, {"text": "] [", "color": "yellow"}, {"text": "-01", "color": "red", "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreaseday1"}}, {"text": "] ", "color": "yellow"}, {"text": "adjust", "color": "yellow", "clickEvent": {"action": "suggest_command", "value": "/function solstice:config/adjustdaylength {hours: LENGTH_IN_HOURS, minutes: LENGTH_IN_MINUTES}"}}, {"text": " [", "color": "yellow"}, {"text": "+01", "color": "green", "clickEvent": {"action": "run_command", "value": "/function solstice:config/increaseday1"}}, {"text": "] [", "color": "yellow"}, {"text": "+05", "color": "green", "clickEvent": {"action": "run_command", "value": "/function solstice:config/increaseday5"}}, {"text": "]", "color": "yellow"}]
    tellraw @s [{"text": "[", "color": "yellow", "underlined": false}, {"text": "-60", "color": "red", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreaseday60"}}, {"text": "] [", "color": "yellow", "underlined": false}, {"text": "-20", "color": "red", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreaseday20"}}, {"text": "] ", "color": "yellow", "underlined": false}, {"text": "  ", "underlined": true}, {"text": "day", "color": "yellow", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/function solstice:config/adjustdaylength {hours: LENGTH_IN_HOURS, minutes: LENGTH_IN_MINUTES}"}}, {"text": "  ", "underlined": true}, {"text": " [", "color": "yellow", "underlined": false}, {"text": "+20", "color": "green", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/increaseday20"}}, {"text": "] [", "color": "yellow", "underlined": false}, {"text": "+60", "color": "green", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/increaseday60"}}, {"text": "]", "color": "yellow", "underlined": false}]
    tellraw @s {"text": ""}
    tellraw @s [{"text": "[", "color": "yellow"}, {"text": "-05", "color": "red", "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreasenight5"}}, {"text": "] [", "color": "yellow"}, {"text": "-01", "color": "red", "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreasenight1"}}, {"text": "] ", "color": "yellow"}, {"text": "adjust", "color": "yellow", "clickEvent": {"action": "suggest_command", "value": "/function solstice:config/adjustnightlength {hours: LENGTH_IN_HOURS, minutes: LENGTH_IN_MINUTES}"}}, {"text": " [", "color": "yellow"}, {"text": "+01", "color": "green", "clickEvent": {"action": "run_command", "value": "/function solstice:config/increasenight1"}}, {"text": "] [", "color": "yellow"}, {"text": "+05", "color": "green", "clickEvent": {"action": "run_command", "value": "/function solstice:config/increasenight5"}}, {"text": "]", "color": "yellow"}]
    tellraw @s [{"text": "[", "color": "yellow", "underlined": false}, {"text": "-60", "color": "red", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreasenight60"}}, {"text": "] [", "color": "yellow", "underlined": false}, {"text": "-20", "color": "red", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/decreasenight20"}}, {"text": "] ", "color": "yellow", "underlined": false}, {"text": " ", "underlined": true}, {"text": "night", "color": "yellow", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/function solstice:config/adjustnightlength {hours: LENGTH_IN_HOURS, minutes: LENGTH_IN_MINUTES}"}}, {"text": " ", "underlined": true}, {"text": " [", "color": "yellow", "underlined": false}, {"text": "+20", "color": "green", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/increasenight20"}}, {"text": "] [", "color": "yellow", "underlined": false}, {"text": "+60", "color": "green", "underlined": false, "clickEvent": {"action": "run_command", "value": "/function solstice:config/increasenight60"}}, {"text": "]", "color": "yellow", "underlined": false}]

tellraw @s {"text": ""}

# Other Options
    tellraw @s {"text": "Time Adjustment Config","color": "gold", "bold": true, "clickEvent": {"action": "run_command", "value": "/function timeadjust:.config"}}
    tellraw @s {"text": "Update Datapack", "color": "green", "bold": true, "clickEvent": {"action": "run_command", "value": "/function solstice:backup"}}
    tellraw @s {"text": "Uninstall Datapack", "color": "red", "bold": true, "clickEvent": {"action": "run_command", "value": "/function solstice:uninstall"}}

# Bottom
    tellraw @s {"text": "■▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬■", "color": "gold", "bold": true}
