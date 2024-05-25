tellraw @s {"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {"text": "Time Adjustment Datapack Configuration","bold": true,"color": "gold"}
scoreboard players set #TimeAdjust TimeAdjust.Daytime 20
scoreboard players operation #TimeAdjust TimeAdjust.Daytime *= #TimeAdjust TimeAdjust.SetTick
tellraw @s [{"text": "Current Day Length is ","bold": false,"color": "yellow"},{"score":{"name": "#TimeAdjust","objective": "TimeAdjust.Daytime"},"color": "yellow"},{"text": " minutes","bold": false,"color": "yellow"}]
execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 0 run tellraw @s [{"text":"Enable/Disable Daylight Cycle  [","color": "yellow","bold": false,"hoverEvent": {"action": "show_text","contents": {"text": "Click to enable/disable daylight cycle","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:enabledaylightcycle"}},{"text": "Disabled","bold": true,"color": "red","hoverEvent": {"action": "show_text","contents": {"text": "Click to enable/disable daylight cycle","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:enabledaylightcycle"}},{"text": "]","bold": false,"color": "yellow","hoverEvent": {"action": "show_text","contents": {"text": "Click to enable/disable daylight cycle","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:enabledaylightcycle"}}]
execute if score #TimeAdjust TimeAdjust.DoDaylightCycle matches 1 run tellraw @s [{"text":"Enable/Disable Daylight Cycle  [","color": "yellow","bold": false,"hoverEvent": {"action": "show_text","contents": {"text": "Click to enable/disable daylight cycle","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:disabledaylightcycle"}},{"text": "Enabled","bold": true,"color": "green","hoverEvent": {"action": "show_text","contents": {"text": "Click to enable/disable daylight cycle","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:disabledaylightcycle"}},{"text": "]","bold": false,"color": "yellow","hoverEvent": {"action": "show_text","contents": {"text": "Click to enable/disable daylight cycle","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:disabledaylightcycle"}}]
tellraw @s {"text": "Increase Day Length by 20 minutes","bold": false,"color": "yellow","hoverEvent": {"action": "show_text","contents": {"text": "Click to increase day length","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:increaselength"}}
tellraw @s {"text": "Decrease Day Length by 20 minutes","bold": false,"color": "yellow","hoverEvent": {"action": "show_text","contents": {"text": "Click to decrease day length","color": "yellow"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:decreaselength"}}
tellraw @s {"text": "Uninstall Datapack","bold": true,"color": "red","hoverEvent": {"action": "show_text","contents": {"text": "!! WARNING !! This is irriversible!","color": "red"}},"clickEvent": {"action": "run_command","value": "/function timeadjust:uninstall"}}