#> avuorina:menu/category.sort
#
# 分けるぜ
#
#

## カチッ
    execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 2

## PRISONデータパック (9001)
    execute if score @s AVOMenu matches 9001 run function avuorina:menu/prison
    
## レバーエフェクト (9002)
    execute if score @s AVOMenu matches 9002 run function avuorina:menu/common/lever_effect

## RESET
    scoreboard players set @s AVOMenu 0