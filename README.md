- ipマスカレードの設定
  - `iptables -A POSTROUTING -t nat -s 192.168.1.0/24 -j MASQUERADE`

- 設定の保存
  - `iptables-save > /etc/sysconfig/iptables`
