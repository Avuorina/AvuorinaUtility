#> avuorina:menu/1.sort
#
# 分けるぜ
#
#

#execute if score @s AVOMenu matches 1 run say 1
## [暗視] (1),(2)
    execute if score @s AVOMenu matches 1 run effect give @s minecraft:night_vision infinite
    execute if score @s AVOMenu matches 2 run effect clear @s minecraft:night_vision

## [ロックドア] (3)
    execute if score @s AVOMenu matches 3 run function dev:install/lock_door/give

## [各種鍵] (4)
    execute if score @s AVOMenu matches 4 run function main:item/all_key

## もう一回見せる用
    execute if score @s AVOMenuTab matches 9001 run function avuorina:menu/prison

## リセット
    
    scoreboard players set @s AVOMenu 0
