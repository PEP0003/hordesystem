scoreboard players set #remaining horde_remaining 0

execute as @e[tag=horde_mob] run scoreboard players add #remaining horde_remaining 1

execute store result bossbar horde:count value run scoreboard players get #remaining horde_remaining

bossbar set horde:count players @a
bossbar set horde:count visible true