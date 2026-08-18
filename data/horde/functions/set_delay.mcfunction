function horde:roll_1_4

execute if score #roll horde_roll matches 1 run scoreboard players set #delay horde_delay 6000
execute if score #roll horde_roll matches 2 run scoreboard players set #delay horde_delay 12000
execute if score #roll horde_roll matches 3 run scoreboard players set #delay horde_delay 18000
execute if score #roll horde_roll matches 4 run scoreboard players set #delay horde_delay 24000