# DEBUG: mostrar el valor del roll para depuración
execute store result score #roll_temp horde_roll run scoreboard players get #roll horde_roll
tellraw @a [{"text":"[HORDE] spawn_normal_choice: roll = ","color":"yellow"},{"score":{"name":"#roll_temp","objective":"horde_roll"}}]

function horde:roll_1_4

# fallback: en pruebas fuerza a mobs vanilla para aislar fallos por mods (comentario: descomenta solo para pruebas)
# execute if score #roll horde_roll matches 1 run summon minecraft:zombie ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
# execute if score #roll horde_roll matches 1 run scoreboard players add #spawned horde_spawned 1

execute if score #roll horde_roll matches 1 run summon minecraft:zombie ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 1 run scoreboard players add #spawned horde_spawned 1

execute if score #roll horde_roll matches 2 run summon minecraft:skeleton ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 2 run scoreboard players add #spawned horde_spawned 1

# notas: estas líneas usan mobs de mods; si falta el mod, el summon fallará (revisa consola)
execute if score #roll horde_roll matches 3 run summon born_in_chaos_v1:decaying_zombie ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 3 run scoreboard players add #spawned horde_spawned 1

execute if score #roll horde_roll matches 4 run summon born_in_chaos_v1:decrepit_skeleton ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 4 run scoreboard players add #spawned horde_spawned 1
