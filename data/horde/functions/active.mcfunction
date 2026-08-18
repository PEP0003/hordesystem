scoreboard players add #timer horde_timer 1

function horde:update_bar

execute unless entity @e[tag=horde_mob] run function horde:end
execute if score #timer horde_timer matches 12000.. run function horde:end