#> avuorina:menu/
#
# メニューを開くぞ！便利な！
#
#

## お前に許可しよう
    scoreboard players enable @s AVOMenu

## MENU
# +++++++データパック一覧+++++++
    tellraw @s [{"text":"======= データパック一覧 =======","bold":true,"color":"white"}]
# [PRISON]
    tellraw @s [{"text":"\n\n"},{"text": "[","color": "white","bold": true},{"clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 9001"},"color":"#0537FF","text":"Prison"},{"bold":true,"color":"white","text":"]"}]
# ++++++++++++++++++++++++++
    tellraw @s [{"text":"\n\n==========================","bold":true,"color":"white"}]