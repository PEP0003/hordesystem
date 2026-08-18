execute if block ~ ~ ~ air if block ~ ~1 ~ air if predicate horde:outside_protected_zone run function horde:spawn_ground_type
execute unless block ~ ~ ~ air run kill @s
execute unless block ~ ~1 ~ air run kill @s
execute if predicate horde:protected_zone run kill @s