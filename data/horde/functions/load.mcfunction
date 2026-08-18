tellraw @a [{"text":"[HORDE] ","color":"dark_red","bold":true},{"text":"Horde System cargado correctamente.","color":"green"}]

scoreboard objectives add horde_active dummy
scoreboard objectives add horde_timer dummy
scoreboard objectives add horde_roll dummy
scoreboard objectives add horde_count dummy
scoreboard objectives add horde_delay dummy
scoreboard objectives add horde_dimension dummy
scoreboard objectives add horde_help trigger
scoreboard objectives add horde_remaining dummy
scoreboard objectives add horde_day dummy
scoreboard objectives add horde_tier dummy
scoreboard objectives add horde_remaining dummy
scoreboard objectives add horde_ground dummy
scoreboard objectives add horde_spawned dummy

scoreboard players set #day horde_day 0
scoreboard players set #tier horde_tier 1
scoreboard players set #remaining horde_remaining 0
scoreboard players set #system horde_active 0
scoreboard players set #timer horde_timer 0
scoreboard players set #roll horde_roll 0
scoreboard players set #count horde_count 0
scoreboard players set #delay horde_delay 6000

bossbar add horde:count {"text":"☠ HORDA — Enemigos restantes","color":"dark_red","bold":true}
bossbar set horde:count max 5
bossbar set horde:count style notched_10
bossbar set horde:count color red
bossbar set horde:count visible false