function horde:roll_1_4

execute if score #roll horde_roll matches 1 run function horde:spawn_boss

execute unless score #roll horde_roll matches 1 run function horde:elite_tier5