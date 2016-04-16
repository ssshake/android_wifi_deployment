# android_wifi_deployment
I created a couple basic scripts to make deploying APKs to android devices over wifi easier.

This script puts your phone into wifi connectable mode, and allows your to do all the typical things that you would normally do over USB. Logcat, install, uninstall, run, etc.

I originally created this to help develop on the GearVR. The gearvr requires removing the phone from the headset in order to plug in over USB to upload APKs. With this system I'm now able to leave my phone in the headset.

## Commmands
`./connect_wifi.sh`

  -  Connect your device over USB and run this command. 

  -  It will obtain the wifi IP, and stand up a listener on port 5555.

  -  After you run this command and it says it's successful you can disconnect your phone from USB

`./get_package_name.sh <search-pattern>`

  -  A very basic wrapper for logcat which you can modify to get your package names. You need this so that you can tell the install_wifi.sh command what package to execute after installing it.

  -  To get a package name, run logcat, then run the application on your device. The package name will show up in the mess of logs. Using grep to reduce the number of log lines returned helps

`./install_wifi.sh <file.apk> <com.package.name>`

  -  Example: ./install test.apk com.Daggasoft.Peripheral/com.google.unity.GoogleUnityActivity

  -  com.package.name is obtained by logcat or get_package_name.sh

  -  The package name is required only if you want to run the package automatically after installing it. If you don't care about this dont supply the package name, only the APK.



