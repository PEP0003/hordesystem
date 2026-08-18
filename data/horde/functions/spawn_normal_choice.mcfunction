function horde:roll_1_4

execute if score #roll horde_roll matches 1 run summon minecraft:zombie ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 1 run scoreboard players add #spawned horde_spawned 1

execute if score #roll horde_roll matches 2 run summon minecraft:skeleton ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 2 run scoreboard players add #spawned horde_spawned 1

execute if score #roll horde_roll matches 3 run summon born_in_chaos_v1:decaying_zombie ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 3 run scoreboard players add #spawned horde_spawned 1

execute if score #roll horde_roll matches 4 run summon born_in_chaos_v1:decrepit_skeleton ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 4 run scoreboard players add #spawned horde_spawned 1