#> avuorina:trigger/sneak
#
# スニークしたら実行
#
#

## スニーク回数取得
    execute if score @s AVOSneakTimer matches 1 run scoreboard players add @s AVOSneakFrequency 10
## 初期化
    scoreboard players set _ _ 4
    scoreboard players operation @s AVOSneakTimer *= _ _
    scoreboard players set _ _ 8
    scoreboard players operation @s AVOSneakTimer %= _ _