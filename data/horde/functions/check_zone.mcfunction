execute if entity @s[x=73,y=200,z=182,dx=267,dy=9,dz=137] run tellraw @s [{"text":"[HORDE] ","color":"dark_red","bold":true},{"text":"ESTAS DENTRO DE LA ZONA PROTEGIDA.","color":"red"}]

execute unless entity @s[x=73,y=200,z=182,dx=267,dy=9,dz=137] run tellraw @s [{"text":"[HORDE] ","color":"dark_green","bold":true},{"text":"ESTAS FUERA DE LA ZONA PROTEGIDA.","color":"green"}]