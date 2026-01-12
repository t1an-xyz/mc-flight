execute as @a[tag=flying] run function flight:fly_up

function flight:detect_fly

scoreboard players add @a[tag=fly_stage_1] fly_timer 1
scoreboard players add @a[tag=fly_stage_2] fly_timer 1