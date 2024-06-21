#> avuorina:menu/
#
# メニューを開くぞ！便利な！
#
#

## お前に許可しよう
    scoreboard players enable @s AVOMenu

## MENU
# +++++++データパック一覧+++++++
    tellraw @s [{"text":"======= カテゴリ =======","bold":true,"color":"white"}]
# 
    tellraw @s [{"text": "\n"}]
# [PRISON]
    tellraw @s [{"text": "[","color": "white","bold": true},{"clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 9001"},"color":"#0537FF","text":"Prison"},{"bold":true,"color":"white","text":"]"}]
# 
    tellraw @s [{"text": "\n"}]
# ++++++++++++++++++++++++++
    tellraw @s [{"text":"=====================","bold":true,"color":"white"}]