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
    tellraw @s {"text": "\n\n"}
# (デバッグ用)
    # 暗視
        # ON
            execute if entity @s[team=DEBUGer] unless entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] run \
            tellraw @s [{"text":"[","color": "red"},{"text": "暗視","color": "#0C1E96","bold": true,"clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 1"}},{"text": "]","color": "red","bold": false}]
        # OFF
            execute if entity @s[team=DEBUGer] if entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] run \
            tellraw @s [{"text":"[","color": "green"},{"text": "暗視","color": "#0C1E96","bold": true,"clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 2"}},{"text": "]","color": "green","bold": false}]
    # ロックドアの元
        execute if entity @s[team=DEBUGer] run \
        tellraw @s [{"text": "["},{"text": "ロックドア","color": "#B710C9","bold": true,"clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 3"}},{"text": "]","color": "white","bold": false}]
    # 各種鍵
        execute if entity @s[team=DEBUGer] run \
        tellraw @s [{"text": "["},{"text": "鍵","color": "#B5C904","bold": true,"clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 4"}},{"text": "]","color": "white","bold": false}]
# =======================
    tellraw @s 



## もう一回
#

#gamerule reducedDebugInfo false
#schedule function 