ip=`adb shell ip -f inet addr show wlan0|grep inet| awk '{print $2}'|cut -d'/' -f1`
adb tcpip 5555
adb connect $ip:5555

echo "SHOULD BE GOOD: $ip:5555"
