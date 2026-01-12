execute as @a[tag=!fly_stage_1,predicate=flight:is_holding_space] run tag @s add fly_stage_1
execute as @a[tag=fly_stage_1,predicate=flight:is_neutral]:
    tag @s remove fly_stage_1
    tag @s add fly_stage_2

execute as @a[tag=fly_stage_2,tag=!flying,predicate=flight:is_holding_space]:
    tag @s remove fly_stage_2
    tag @s add flying
    attribute @s minecraft:gravity base set 0.0
    attribute @s fall_damage_multiplier base set 0.0

execute as @a[tag=fly_stage_2,tag=flying,predicate=flight:is_holding_space]:
    tag @s remove flying
    tag @s remove fly_stage_2
    attribute @s minecraft:gravity base set 0.08
    attribute @s fall_damage_multiplier base set 1.0
    effect clear @s minecraft:levitation

execute as @a[scores={fly_timer=10..}]:
    tag @s remove fly_stage_1
    tag @s remove fly_stage_2

scoreboard players reset @a[scores={fly_timer=10..},predicate=flight:is_neutral] fly_timer