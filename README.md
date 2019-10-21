# haskell-json-miner

```
stack setup # Iy you don't vae haskell and stuff setup
stack build
stack exec haskell-json-miner-exe
```

This will download and index the json's, v1 will only read all json files from disk and 
index them on most the count of the words used most.

# Launching a REPL

If you want to launch a REPL:

`stack ghci`

# Workin on it:
Start two terminals one with:

`stack build --file-watch`

In the other you restart the binary if needed, or run a REPL
