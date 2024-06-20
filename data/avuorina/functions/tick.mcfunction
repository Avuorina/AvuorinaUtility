#> avuorina:tick
#
# 毎tick実行されるコマンド群
#
#

## トリガー
    execute as @a if score @s AVOSneakTimer matches 1.. run function avuorina:trigger/sneak
    execute as @a if score @s AVOSneakFrequency matches 1.. run function avuorina:trigger/sneak_frequency
    execute as @a if score @s AVOMenu matches 9001.. run function avuorina:menu/datapack.sort
    execute as @a if score @s AVOMenu matches 1..9000 run function avuorina:menu/1.sort