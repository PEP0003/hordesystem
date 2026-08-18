function horde:roll_1_4

execute if score #roll horde_roll matches 1 run summon iceandfire:dread_ghoul ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 2 run summon iceandfire:dread_beast ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 3 run summon iceandfire:dread_scuttler ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}
execute if score #roll horde_roll matches 4 run summon stalwart_dungeons:nether_keeper ~ ~ ~ {Tags:["horde_mob"],PersistenceRequired:1b}