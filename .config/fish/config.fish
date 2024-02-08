set fish_greeting ""

# Handle ASDF shims
source /opt/asdf-vm/asdf.fish

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
    /home/josh/bin/start-hyprland.sh
  end
end
