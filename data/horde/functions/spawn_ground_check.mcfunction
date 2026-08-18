# DEBUG: hemos llegado a spawn_ground_check (se comprobará bloque actual y el siguiente)
execute at @s run tellraw @a [{"text":"[HORDE] spawn_ground_check: comprobando bloques en marker","color":"gold"},{"text":" (si no hay aire o está en zona protegida se matará el marker)","color":"white"}]

execute if block ~ ~ ~ air if block ~ ~1 ~ air if predicate horde:outside_protected_zone run function horde:spawn_ground_type
execute unless block ~ ~ ~ air run kill @s
execute unless block ~ ~1 ~ air run kill @s
execute if predicate horde:protected_zone run kill @s
