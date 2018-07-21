```bash
# list sessions
tmux ls
ctrl-b s

# new session
tmux
tmux new -s session-name

# attach to session
tmux a
tmux a -t session-name

# detach from session
tmux detach
ctrl-b d

# kill session
tmux kill-session -t session-name
```