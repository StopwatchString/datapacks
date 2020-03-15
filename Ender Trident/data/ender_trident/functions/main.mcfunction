





execute if @e[type=trident,nbt={InGround:1b,Trident:{tag:{display:{Lore:['{"text":"Teleporting","color":"gray","italic":false}']}}}},tag=!done] as @s run function ender_trident:tp

execute as @p[nbt={UUIDMost:@s[nbt={OwnerUUIDMost}]},UUIDLeast:@s[nbt={OwnerUUIDLeast}]]

execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b}}] at @s if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:dragon_head",Count:1b}}] run data modify entity @s Item.tag.display.Lore set value ['{"text":"Teleporting","color":"gray","italic":false}']
execute as @e[type=item,nbt={Item:{id:"minecraft:trident",Count:1b}}] at @s if entity @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:dragon_head",Count:1b}}] run kill @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:dragon_head",Count:1b}},limit=1,sort=nearest]