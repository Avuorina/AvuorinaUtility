#> avuorina:load
#
# ロード時実行されるコマンド群
#
#

## 定義

    ## スコアボード

        ## 検知用
            # SneakTimer - スニークした分だけ増加するスコア
                scoreboard objectives add AVOSneakTimer minecraft.custom:minecraft.sneak_time "スニークタイマー"
        ## トリガー
            # Menu - メニュートリガー用
                scoreboard objectives add AVOMenu trigger "メニュースコア"
        ## ダミー
            # SneakFrequency - スニーク頻度を保存するぞ
                scoreboard objectives add AVOSneakFrequency dummy "スニーク頻度"
            # _ - 汎用スコアボード
                scoreboard objectives add _ dummy "汎用スコアボード"
            # MenuTab
                scoreboard objectives add AVOMenuTab dummy "メニュータブ"

## ロード完了
    tellraw @a [{"color":"dark_gray","text":"\n>"},{"color":"gray","text":">"},{"bold":false,"color":"white","text":"RELOAD"}]