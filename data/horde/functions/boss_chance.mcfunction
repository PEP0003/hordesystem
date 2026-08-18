function horde:roll_1_4

execute if score #roll horde_roll matches 1 run function horde:boss_roll
execute unless score #roll horde_roll matches 1 run function horde:elite_tier5