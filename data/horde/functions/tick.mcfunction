execute if score #system horde_active matches 0 run function horde:waiting
execute if score #system horde_active matches 1 run function horde:active

execute if score #system horde_active matches 1 run function horde:process_help