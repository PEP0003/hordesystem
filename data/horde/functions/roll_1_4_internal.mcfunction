summon minecraft:marker ~ ~ ~ {Tags:["horde_rng","horde_rng_1"]}
summon minecraft:marker ~ ~ ~ {Tags:["horde_rng","horde_rng_2"]}
summon minecraft:marker ~ ~ ~ {Tags:["horde_rng","horde_rng_3"]}
summon minecraft:marker ~ ~ ~ {Tags:["horde_rng","horde_rng_4"]}

tag @e[type=minecraft:marker,tag=horde_rng] remove horde_rng_pick
tag @e[type=minecraft:marker,tag=horde_rng,sort=random,limit=1] add horde_rng_pick

execute if entity @e[type=minecraft:marker,tag=horde_rng_1,tag=horde_rng_pick] run scoreboard players set #roll horde_roll 1
execute if entity @e[type=minecraft:marker,tag=horde_rng_2,tag=horde_rng_pick] run scoreboard players set #roll horde_roll 2
execute if entity @e[type=minecraft:marker,tag=horde_rng_3,tag=horde_rng_pick] run scoreboard players set #roll horde_roll 3
execute if entity @e[type=minecraft:marker,tag=horde_rng_4,tag=horde_rng_pick] run scoreboard players set #roll horde_roll 4

kill @e[type=minecraft:marker,tag=horde_rng]