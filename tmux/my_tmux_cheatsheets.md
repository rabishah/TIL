# my tmux cheatsheets  

##aliases 
```
#list sessions
alias tl='tmux ls'

#create a session
alias tn='tmux -2 new -s'

#attach a session
alias ta='tmux -2 attach -t'
```

## windows

#### create, rename and split
 | keys |
 --------|------|
create a new window | prefix + c |
rename the current window | prefix + ,
split the window into vertical plane | prefix + h
split the window into horizonal plane | prefix + s

#### navigation
 | keys |
--------|------|
move between windows | prefix + w
move window to a new number | prefix + .
move to last window used | prefix + prefix


## panes
#### navigation
 	 | keys |
--------|------|
move to the left pane | prefix + h
move to the right pane | prefix + j
move to the above pane  | prefix + j
move to the below pane | prefix + k
toggle layout  | prefix + space
break the pane out of the window | prefix + !
swap panes with another | prefix + { or }

#### remove a pane
```
prefix + x
```

#### detach a session
```
prefix + d
```

## misc
#### open a man page in new window
```
bind-key / command-prompt "split-window 'exec man %%'"
```

#### reload .tmux.conf 
```
prefix + r
```
