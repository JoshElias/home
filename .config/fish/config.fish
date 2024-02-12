set fish_greeting ""

# Handle ASDF shims
source ~/.asdf/asdf.fish

# Start SSH Agent
if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Start Hyprland at login
if status is-login
  if test (tty) = "/dev/tty1"
    /usr/bin/dbus-run-session /usr/bin/Hyprland
  end
end
