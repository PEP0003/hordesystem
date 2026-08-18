execute if score #spawned horde_spawned matches ..9 positioned ~36 ~ ~ run function horde:spawn_normal_here
execute if score #spawned horde_spawned matches ..9 positioned ~-36 ~ ~ run function horde:spawn_normal_here
execute if score #spawned horde_spawned matches ..9 positioned ~ ~ ~36 run function horde:spawn_normal_here
execute if score #spawned horde_spawned matches ..9 positioned ~ ~ ~-36 run function horde:spawn_normal_here

execute if score #spawned horde_spawned matches ..9 positioned ~26 ~ ~26 run function horde:spawn_normal_here
execute if score #spawned horde_spawned matches ..9 positioned ~-26 ~ ~26 run function horde:spawn_normal_here

execute if score #spawned horde_spawned matches ..9 positioned ~20 ~ ~-30 run function horde:spawn_tier_here
execute if score #spawned horde_spawned matches ..9 positioned ~-20 ~ ~-30 run function horde:spawn_tier_here
execute if score #spawned horde_spawned matches ..9 positioned ~30 ~ ~12 run function horde:spawn_tier_here

execute if score #spawned horde_spawned matches ..9 positioned ~-30 ~ ~12 run function horde:spawn_elite_or_boss_here