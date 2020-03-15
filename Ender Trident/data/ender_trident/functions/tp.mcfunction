execute as @s store result score @s pullX run data get entity @s Pos[0]
execute as @s store result score @s pullY run data get entity @s Pos[1]
execute as @s store result score @s pullZ run data get entity @s Pos[2]


execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["TeleportTarget"], Duration:1}
tag @s add TeleportPlayer
execute as @e[type=area_effect_cloud,tag=TeleportTarget,limit=1] run function ender_trident:player
tag @s remove TeleportPlayer