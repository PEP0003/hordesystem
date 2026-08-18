execute if block ~ ~-1 ~ air if score #ground horde_ground matches 1.. run scoreboard players remove #ground horde_ground 1
execute if block ~ ~-1 ~ air if score #ground horde_ground matches 1.. positioned ~ ~-1 ~ run function horde:find_ground

execute unless block ~ ~-1 ~ air run function horde:spawn_ground_check
execute if score #ground horde_ground matches 0 run kill @s