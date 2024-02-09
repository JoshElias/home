#!/usr/bin/env fish

if not test -n $argv[1]
  echo "Error: Please provide a MAC address" >&2
  exit 1
else if not test -n $argv[2]
  echo "Error: Please provide 'on', 'off' or 'pair'" >&2
  exit 1
end

#bluetoothctl -- default-agent
bluetoothctl -- power on
switch $argv[2]
  case 'on'
    bluetoothctl -- trust $argv[1]
    bluetoothctl -- connect $argv[1]
    echo "Successfully connected to: $argv[1]"
  case 'off'
    bluetoothctl -- disconnect $argv[1]
    echo "Successfully disconnected: $argv[1]"
  case 'pair'
    bluetoothctl -- pair $argv[1]
    echo "Successfully paired: $argv[1]" 
end
