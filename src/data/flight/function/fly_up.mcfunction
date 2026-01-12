if predicate flight:is_holding_space:
    attribute @s minecraft:gravity base set 0.08
    effect give @s minecraft:levitation 1 5 true

if predicate flight:is_neutral:
    attribute @s minecraft:gravity base set 0.0
    effect clear @s minecraft:levitation
    effect clear @s minecraft:slow_falling

if predicate flight:is_neutral_alt:
    attribute @s minecraft:gravity base set 0.0
    effect clear @s minecraft:levitation
    effect clear @s minecraft:slow_falling

if predicate flight:is_holding_shift:
    attribute @s minecraft:gravity base set 0.08
    effect give @s minecraft:slow_falling 2 0 true
