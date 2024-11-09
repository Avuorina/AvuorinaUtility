#> avuorina:menu/common/show_score
#
# 対応しているスコアボードを表示させるためのコマンド群
#
#

## 以前の個体は削除
    kill @e[tag=AVOShowScore]
    kill @e[tag=AVOShowScoreBase]
## 基準となるエンティティを作成
    execute positioned ^ ^ ^ run summon armor_stand ^ ^ ^ {Marker:1b,Invisible:1b,Tags:["AVOShowScoreBase"]}
    execute as @e[type=armor_stand,tag=AVOShowScoreBase] at @s facing entity @a[sort=nearest,limit=1] feet run tp ^ ^ ^
## example
    #execute positioned ^ ^ ^ run summon text_display ^ ^ ^ {salignment:"right",Tags:["AVOShowScore"],text:'{"text":"スコア名"}'}
    #execute positioned ^ ^-1 ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore"],text:'{"text":"スコア"}'}

## _
    execute positioned ^ ^ ^ run summon text_display ^ ^ ^ {alignment:"right",Tags:["AVOShowScore"],text:'{"text":"汎用スコア"}'}
    execute positioned ^1.3 ^ ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore","_"],text:'{"bold":true,"score":{"name":"_","objective":"_"}}'}

## AVOSneakTimer
    execute positioned ^ ^0.3 ^ run summon text_display ^ ^ ^ {alignment:"right",Tags:["AVOShowScore"],text:'{"text":"スニークタイマー"}'}
    execute positioned ^1.3 ^0.3 ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore","AVOSneakTimer"],text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOSneakTimer"}}'}
## AVOMenu
    execute positioned ^ ^0.6 ^ run summon text_display ^ ^ ^ {alignment:"right",Tags:["AVOShowScore"],text:'{"text":"スニーク頻度"}'}
    execute positioned ^1.3 ^0.6 ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore","AVOSneakFrequency"],text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOSneakFrequency"}}'}

## AVOSneakFrequency
    execute positioned ^ ^0.9 ^ run summon text_display ^ ^ ^ {alignment:"right",Tags:["AVOShowScore"],text:'{"text":"メニュー"}'}
    execute positioned ^1.3 ^0.9 ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore","AVOMenu"],text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOMenu"}}'}
## AVOMenuTab
    execute positioned ^ ^1.2 ^ run summon text_display ^ ^ ^ {alignment:"right",Tags:["AVOShowScore"],text:'{"text":"メニュータブ"}'}
    execute positioned ^1.3 ^1.2 ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore","AVOMenuTab"],text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"AVOMenuTab"}}'}
## Direction
    execute positioned ^ ^1.5 ^ run summon text_display ^ ^ ^ {alignment:"right",Tags:["AVOShowScore"],text:'{"text":"方向"}'}
    execute positioned ^1.3 ^1.5 ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore","Direction"],text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"Direction"}}'}
## InventoryCount
    execute positioned ^ ^1.8 ^ run summon text_display ^ ^ ^ {alignment:"right",Tags:["AVOShowScore"],text:'{"text":"所持数"}'}
    execute positioned ^1.3 ^1.8 ^ run summon text_display ^ ^ ^ {alignment:"left",Tags:["AVOShowScore","InventoryCount"],text:'{"bold":true,"score":{"name":"@a[sort=nearest,limit=1]","objective":"InventoryCount"}}'}

execute as @e[type=text_display,tag=AVOShowScore] at @s rotated as @e[tag=AVOShowScoreBase] run tp ^ ^ ^

## スコアを更新させる
    tag @s add AVOShowScorer
