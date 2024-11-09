#> avuorina:trigger/sneak_frequency
#
# スニークで+10 毎tick -1
#
#

## スニーク３回で実行
    execute if score @s AVOSneakFrequency matches 20.. run function avuorina:menu/
    execute if score @s AVOSneakFrequency matches 20.. run scoreboard players set @s AVOSneakFrequency 1 
    scoreboard players remove @s AVOSneakFrequency 1