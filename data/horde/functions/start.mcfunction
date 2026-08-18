scoreboard players set #system horde_active 0
scoreboard players set #timer horde_timer 0
scoreboard players set #ground horde_ground 32
scoreboard players set #spawned horde_spawned 0
scoreboard players set #count horde_count 10
bossbar set horde:count max 10

tag @a remove horde_target
tag @a remove horde_helper

kill @e[type=minecraft:marker,tag=horde_anchor]

execute store result score #day horde_day run execute in minecraft:overworld run time query day

scoreboard players set #tier horde_tier 1
execute if score #day horde_day matches 10..19 run scoreboard players set #tier horde_tier 2
execute if score #day horde_day matches 20..29 run scoreboard players set #tier horde_tier 3
execute if score #day horde_day matches 30..39 run scoreboard players set #tier horde_tier 4
execute if score #day horde_day matches 40.. run scoreboard players set #tier horde_tier 5

execute as @r run tag @s add horde_target

execute as @a[tag=horde_target,limit=1] at @s run summon minecraft:marker ~ ~ ~ {Tags:["horde_anchor"]}

execute as @a[tag=horde_target,limit=1] at @s if predicate horde:overworld run scoreboard players set #dim horde_dimension 1
execute as @a[tag=horde_target,limit=1] at @s if predicate horde:nether run scoreboard players set #dim horde_dimension 2
execute as @a[tag=horde_target,limit=1] at @s if predicate horde:end run scoreboard players set #dim horde_dimension 3

scoreboard players set #system horde_active 1
scoreboard players set #count horde_count 10

bossbar set horde:count max 10
bossbar set horde:count players @a
bossbar set horde:count visible true

execute as @a[tag=horde_target,limit=1] at @s if predicate horde:overworld run tellraw @a [{"text":"☠ ","color":"dark_red","bold":true},{"text":"¡HORDA EN EL OVERWORLD! ","color":"red","bold":true},{"text":"Objetivo: ","color":"white"},{"selector":"@s","color":"gold","bold":true}]

execute as @a[tag=horde_target,limit=1] at @s if predicate horde:nether run tellraw @a [{"text":"☠ ","color":"dark_red","bold":true},{"text":"¡HORDA EN EL NETHER! ","color":"red","bold":true},{"text":"Objetivo: ","color":"white"},{"selector":"@s","color":"gold","bold":true}]

execute as @a[tag=horde_target,limit=1] at @s if predicate horde:end run tellraw @a [{"text":"☠ ","color":"dark_red","bold":true},{"text":"¡HORDA EN EL END! ","color":"red","bold":true},{"text":"Objetivo: ","color":"white"},{"selector":"@s","color":"gold","bold":true}]

tellraw @a [{"text":"⚔ ","color":"yellow","bold":true},{"text":"¿Quieres ayudar? ","color":"white"},{"text":"[⚔ AYUDAR]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger horde_help set 1"}}]

scoreboard players enable @a horde_help

execute as @a[tag=horde_target,limit=1] at @s run function horde:spawn

bossbar set horde:count max 10
execute store result bossbar horde:count value run scoreboard players get #spawned horde_spawned
bossbar set horde:count players @a
