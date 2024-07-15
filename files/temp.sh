cpu_temp=$(cat  /sys/devices/virtual/thermal/thermal_zone1/temp)
cpu_temp="$((cpu_temp / 1000))"
echo "${cpu_temp} Celcius"
