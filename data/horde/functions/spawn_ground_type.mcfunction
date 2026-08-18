execute if entity @s[tag=horde_spawn_normal] run function horde:spawn_normal_choice
execute if entity @s[tag=horde_spawn_tier] run function horde:spawn_tier_choice
execute if entity @s[tag=horde_spawn_special] run function horde:elite_or_boss_choice

kill @s