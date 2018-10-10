# OpenvpnForGames
#### 自动搭建Openvpn+udpspeeder+udp2raw,配合项目里的外服游戏路由表使Openvpn只用于游戏用途，不能翻墙。
我只是简单的搬运工，项目用到的一键脚本99%源自 yobabyshark 大佬的一键搭建脚本，我只是简单的在脚本上加上适合游戏联机的参数并将认证方式修改为账号密码登录(方便和朋友合租时增减账号)。

yobabyshark大佬原repo地址:https://github.com/yobabyshark/onekeyopenvpn

同时感谢udpspeeder和udp2raw作者 wangyu- (https://github.com/wangyu-) 如果没有他的程序就没有办法为自建游戏加速器提供这么好的网络环境。

#### 使用场景：适合使用按量计费VPS(如阿里云)搭建的Openvpn。流量大户或全局代理用户建议绕道或直接使用yobabyshark大佬的版本。

### 使用方法
仅适用于Centos7

> bash <(curl -L -s https://raw.githubusercontent.com/lmc999/OpenvpnForGames/master/openvpnforgames.sh)

●运行完脚本后会安装好openvpn、udpspeeder、udp2raw这三个服务

●并生成储存Openvpn登录账号密码的文件psw-file,文件存放地址:/etc/openvpn

●默认登录账号:client，密码:client;可以vi/vim修改成自己设定的账号密码，格式是一行一组账号密码

●用Winscp等软件登入VPS,下载目录/etc/openvpn/client/中的所有文件到本地备用

●下载windows版udpspeeder和udp2raw到本地,和刚才在VPS下载的文件放在同一个文件夹内，文件夹改名为client
https://raw.githubusercontent.com/lmc999/OpenvpnForGames/master/speederv2.exe
https://raw.githubusercontent.com/lmc999/OpenvpnForGames/master/udp2raw.exe

●安装Openvpn Windows客户端，安装WinPcap，下载地址自己找

●将client文件夹复制到路径 C:\Users\XXX(你的电脑用户名)\OpenVPN\config

●运行Openvpn客户端，右下角通知栏找到Openvpn小电脑图标，右键点connect，输入账号密码即可连接成功。

### 补充说明
指定Openvpn走路由表的命令格式是：route + IP + 掩码 +  vpn_gateway，如 route 119.81.0.0 255.255.0.0 vpn_gateway。并且需要配合route-nopull和max-routes 1000这个两参数一起使用。

默认生成的客户端配置文件client.ovpn是不含路由表的，如不自行添加路由表直接使用则会全局代理。添加好路由表的配置文件可以参考sample.ovpn，里面添加了pubg的路由规则。
