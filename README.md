# OpenvpnForGames
#### 自动搭建Openvpn+udpspeeder+udp2raw,配合项目里的外服游戏路由表使Openvpn只用于游戏用途，不能翻墙。
我只是简单的搬运工，项目用到的一键脚本99%源自 yobabyshark 大佬的一键搭建脚本，我只是简单的在脚本上加上适合游戏联机的参数并将认证方式修改为账号密码登录(方便和朋友合租时增减账号)。

yobabyshark大佬原repo地址:https://github.com/yobabyshark/onekeyopenvpn

同时感谢udpspeeder和udp2raw作者 wangyu- (https://github.com/wangyu-) 如果没有他的程序就没有办法为自建游戏加速器提供这么好的网络环境。

#### 使用场景：适合使用按量计费VPS搭建的Openvpn并且Openvpn只用于游戏用途。目前和2个朋友合租HK阿里云搭Openvpn玩吃鸡，因为VPS是按量计费需要节省流量。由于只有游戏IP走代理，目前一个月平均流量不到1G，每人成本10块不到。

### 使用方法
仅适用于Centos7

> bash <(curl -L -s raw.githubusercontent.com/lmc999/OpenvpnForGames/master/onekeyopenvpn.sh)
