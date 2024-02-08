set fish_greeting ""

# Handle ASDF shims
source /opt/asdf-vm/asdf.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start Hyprland at login
if status is-login
  if test (tty) = "/dev/tty1"
    /home/josh/bin/start-hyprland.sh
  end
end
