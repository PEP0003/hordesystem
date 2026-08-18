tellraw @a [{"text":"✓ ","color":"green","bold":true},{"text":"¡La horda ha terminado!","color":"white"}]

kill @e[tag=horde_mob]
kill @e[type=minecraft:marker,tag=horde_anchor]

bossbar set horde:count visible false
bossbar set horde:count players @a

tag @a remove horde_target
tag @a remove horde_helper

scoreboard players set #system horde_active 0
scoreboard players set #timer horde_timer 0
scoreboard players set #count horde_count 0

execute as @a[limit=1] run function horde:set_delay