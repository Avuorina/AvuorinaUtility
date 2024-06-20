#> avuorina:tick
#
# 毎tick実行されるコマンド群
#
#

## トリガー
    execute as @a if score @s AVOSneakTimer matches 1.. run function avuorina:trigger/sneak
    execute as @a if score @s AVOSneakFrequency matches 1.. run function avuorina:trigger/sneak_frequency