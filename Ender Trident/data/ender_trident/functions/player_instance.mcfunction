execute store result entity @s Pos[0] double 1 run scoreboard players get X targetCoords
execute store result entity @s Pos[1] double 1 run scoreboard players get Y targetCoords
execute store result entity @s Pos[2] double 1 run scoreboard players get Z targetCoords
tp @a[tag=TeleportPlayer, limit=1] @s
kill @s