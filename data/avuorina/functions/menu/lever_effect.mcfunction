#> avuorina:menu/lever_effect
#
# エフェクトの切替をするためのコマンド群
#
#

## 以前との差を求める (9002-(以前のタブ))
scoreboard players operation @s _ = @s AVOMenuTab
scoreboard players set @s AVOMenuTab 9002
scoreboard players operation @s AVOMenuTab -= @s _

## 許可しよう
    scoreboard players enable @s AVOMenu

## カチッ
    execute at @s run playsound ui.button.click master @s ~ ~ ~ 1 2

# 
    tellraw @s {"text": "\n\n\n\n\n\n\n\n\n\n\n\n"}

## タイトル
    tellraw @s [{"text":"======= エフェクト =======","bold":true,"color":"white"}]
# 
    tellraw @s {"text": "\n"}

## 暗視
    # ONにする
        execute if entity @s[team=DEBUGer] unless entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] run \
        tellraw @s [{"text": "[","color": "red"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 1"}},{"text": "暗視","color": "white","bold": true},{"text": "]","color": "red","bold": false}]
    # OFFにする
        execute if entity @s[team=DEBUGer] if entity @s[nbt={active_effects:[{id:"minecraft:night_vision"}]}] run \
        tellraw @s [{"text": "[","color": "green"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 2"}},{"text": "暗視","color": "white","bold": true},{"text": "]","color": "green","bold": false}]
## 無敵
    # ON
        execute if entity @s[team=DEBUGer] unless entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run \
        tellraw @s [{"text": "[","color": "red"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 7"}},{"text": "無敵","color": "white","bold": true},{"text": "]","color": "red","bold": false}]
    # OFF
        execute if entity @s[team=DEBUGer] if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run \
        tellraw @s [{"text": "[","color": "green"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 8"}},{"text": "無敵","color": "white","bold": true},{"text": "]","color": "green","bold": false}]
## 無敵
    # ON
        execute if entity @s[team=DEBUGer] unless entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run \
        tellraw @s [{"text": "[","color": "red"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 9"}},{"text": "満腹","color": "white","bold": true},{"text": "]","color": "red","bold": false}]
    # OFF
        execute if entity @s[team=DEBUGer] if entity @s[nbt={active_effects:[{id:"minecraft:saturation"}]}] run \
        tellraw @s [{"text": "[","color": "green"},{"text": " ■ ","color": "white","clickEvent":{"action":"run_command","value":"/trigger AVOMenu set 10"}},{"text": "満腹","color": "white","bold": true},{"text": "]","color": "green","bold": false}]
# 
    tellraw @s {"text": "\n"}

# =======================
    tellraw @s [{"text": "======================","bold": true,"color": "white"}]