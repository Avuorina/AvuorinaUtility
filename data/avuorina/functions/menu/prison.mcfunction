#> avuorina:menu/prison
#
# 刑務所RPするやつのためのメニュー
#
#

## 許可しよう
    scoreboard players enable @s AVOMenu
    scoreboard players set @s AVOMenuTab 9001

## Menu
# 
    tellraw @s {"text": "\n\n\n\n\n\n\n\n\n\n\n\n"}
# ======= PRISON =======
    tellraw @s [{"text":"======= ","color": "white","bold": true},{"text": "PRISON","color": "#0537FF"},{"text": " =======","color": "white"}]
# 
    tellraw @s {"text": "\n"}
# (デバッグ用)
    # レバーエフェクト
        tellraw @s [{"text": "[","color": "yellow"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 9002"}},{"text": "エフェクト","color": "white","bold": true},{"text": "]","color": "yellow","bold": false}]
    # ヒール
        execute if entity @s[team=DEBUGer] run \
        tellraw @s [{"text": "[","color": "light_purple"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 3"}},{"text": "ヒール","color": "white","bold": true},{"text": "]","color": "light_purple","bold": false}]
    # ロックドア  カギ
        execute if entity @s[team=DEBUGer] run \
        tellraw @s [{"text": "[","color": "yellow"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 4"}},{"text": "ロックドア","color": "white","bold": true},{"text": "]","color": "yellow","bold": false},{"text": "  "},{"text": "["},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 5"}},{"text": "カギ","color": "white","bold": true},{"text": "]","color": "yellow","bold": false}]
    # スコアを表示
        # ON
            execute if entity @s[team=DEBUGer,tag=!AVOShowScorer] run \
            tellraw @s [{"text": "[","color": "red"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 11"}},{"text": "スコア表示","color": "white","bold": true},{"text": "]","color": "red","bold": false}]
        # OFF
            execute if entity @s[team=DEBUGer,tag=AVOShowScorer] run \
            tellraw @s [{"text": "[","color": "green"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 12"}},{"text": "スコア表示","color": "white","bold": true},{"text": "]","color": "green","bold": false}]
# 
    tellraw @s {"text": "\n"}
# =======================
    tellraw @s [{"text": "================","bold": true,"color": "white"}]


