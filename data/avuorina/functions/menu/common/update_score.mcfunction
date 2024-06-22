#> avuorina:menu/common/update_score
#
# スコアを常時実行させるためのコマンド群
#
#

## OFF
    execute if score @a[sort=nearest,limit=1] AVOMenu matches 12 run kill @e[type=armor_stand,tag=AVOShowScoreBase]
    execute if score @a[sort=nearest,limit=1] AVOMenu matches 12 run tag @a remove AVOShowScorer
    execute if score @a[sort=nearest,limit=1] AVOMenu matches 12 run kill @e[type=text_display,tag=AVOShowScore]
## _
    data merge entity @s[tag=_] {text:'{"score":{"name":"_","objective":"_"},"bold":true}'}
## SneakTimer
    data merge entity @s[tag=AVOSneakTimer] {text:'{"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOSneakTimer"},"bold":true}'}
## AVOSneakFrequency
    data merge entity @s[tag=AVOSneakFrequency] {text:'{"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOSneakFrequency"},"bold":true}'}
## AVOMenu
    data merge entity @s[tag=AVOMenu] {text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOMenu"}}'}
## AVOMenuTab
    data merge entity @s[tag=AVOMenuTab] {text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOMenuTab"}}'}
## Direction
    data merge entity @s[tag=Direction] {text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"Direction"}}'}
## InventoryCount
    data merge entity @s[tag=InventoryCount] {text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"InventoryCount"}}'}
