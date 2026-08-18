execute if score #system horde_active matches 1 unless entity @s[tag=horde_target] run tag @s add horde_helper

execute if score #system horde_active matches 1 unless entity @s[tag=horde_target] run tellraw @s [{"text":"⚔ ","color":"yellow","bold":true},{"text":"¡Te has unido para ayudar!","color":"green"}]

execute if score #system horde_active matches 1 unless entity @s[tag=horde_target] run tp @s @e[type=minecraft:marker,tag=horde_anchor,limit=1]