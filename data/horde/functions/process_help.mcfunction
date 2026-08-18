execute as @a[scores={horde_help=1..},tag=!horde_target] run tag @s add horde_helper

execute as @a[scores={horde_help=1..},tag=!horde_target] run tellraw @s [{"text":"⚔ ","color":"yellow","bold":true},{"text":"¡Te has unido para ayudar!","color":"green"}]

execute as @a[scores={horde_help=1..},tag=!horde_target] if score #dim horde_dimension matches 1 run execute in minecraft:overworld run tp @s @e[type=minecraft:marker,tag=horde_anchor,limit=1]

execute as @a[scores={horde_help=1..},tag=!horde_target] if score #dim horde_dimension matches 2 run execute in minecraft:the_nether run tp @s @e[type=minecraft:marker,tag=horde_anchor,limit=1]

execute as @a[scores={horde_help=1..},tag=!horde_target] if score #dim horde_dimension matches 3 run execute in minecraft:the_end run tp @s @e[type=minecraft:marker,tag=horde_anchor,limit=1]

scoreboard players set @a[scores={horde_help=1..}] horde_help 0