### writing modular bash scripts

_Named function_: the possibility to associate a name with a command list and execute the command list by using the name as a command

```
hw() {
  echo 'Hello World!!';
}
```

```
# calling named function
$ hw
```

```
# source external script in the same process
. ~/path/to/script
```

####functions that execute in a separate process
```
hw() ( echo 'Hello World!!' )
```

src: [Shell_Scripting/Modularization](https://en.wikibooks.org/wiki/Bourne_Shell_Scripting/Modularization)
