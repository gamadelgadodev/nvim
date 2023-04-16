# nvim configuration for c

This is my configuration for nvim and c# and other languages 

## intallation

first is nesesary install [nvim](https://github.com/neovim/neovim/releases)

next yo need to create a configuration folder with the next comand

```bash
:call mkdir(stdpath("config"), "p")
```

and you can find the path folder with

```bash
:echo stdpath("config")
```
next you only need clone the repo in the folder with the next comand

```bash
git clone https://github.com/gamadelgadodev/nvim.git
```
you need install some programs for use my nvim configuration
first 

```bash
choco install ripgrep 
choco install fd
```
```bash
 python3 -m pip install --user --upgrade pynvim
 ```