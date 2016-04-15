adb install -r $1

if [ -n "$2" ]
  then
    echo "Running on device..."
    adb shell am start -n $2
fi


