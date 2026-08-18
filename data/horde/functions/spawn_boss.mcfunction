function horde:roll_1_4

execute if score #roll horde_roll matches 1 run summon iceandfire:hydra ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 2 run summon iceandfire:dread_lich ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 3 run summon aquamirae:maze_mother ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 4 run summon tenebrous_lands:abaddon ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}

tellraw @a [{"text":"☠ ","color":"dark_red","bold":true},{"text":"¡EVENTO BOSS!","color":"red","bold":true}]