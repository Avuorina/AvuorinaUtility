#> avuorina:menu/result.sort
#
# 分けるぜ
#
#

## カチッ
    execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 2

## [暗視] (1),(2)
    execute if score @s AVOMenu matches 1 run effect give @s night_vision infinite 0 true
    execute if score @s AVOMenu matches 2 run effect clear @s night_vision

## [ヒール] (3)
    execute if score @s AVOMenu matches 3 run effect give @s instant_health 1 20 true

## [ロックドア] (4)
    execute if score @s AVOMenu matches 4 run function dev:install/lock_door/give

## [各種鍵] (5)
    execute if score @s AVOMenu matches 5 run function main:item/all_key

## [無敵] (7),(8)
    execute if score @s AVOMenu matches 7 run effect give @s resistance infinite 4 true
    execute if score @s AVOMenu matches 8 run effect clear @s resistance

## [満腹度回復] (9),(10)
    execute if score @s AVOMenu matches 9 run effect give @s saturation infinite 0 true
    execute if score @s AVOMenu matches 10 run effect clear @s saturation

## [スコア表示] (11),(12)
    execute if score @s AVOMenu matches 11 facing entity @s eyes at @s positioned ^ ^1 ^3 rotated ~180 0 run function avuorina:menu/common/show_score
    execute if score @s AVOMenu matches 12 run tag @s remove AVOShowScorer

## もう一回見せる用
    # PRISON
    execute if score @s AVOMenuTab matches 1 run function avuorina:menu/prison
    execute if score @s AVOMenuTab matches 9001 run function avuorina:menu/prison

## リセット
    
    scoreboard players set @s AVOMenu 0
