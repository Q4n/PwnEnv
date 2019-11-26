# PwnEnv

## ext

### get libc source code 

`apt source libc6-dev`

### zsh settings

```bash
ZSH_THEME="ys"
plugins=(git zsh-autosuggestions)
alias ctf='/mnt/hgfs/ctf'
alias fm='nautilus ./'
alias aslr="echo 'echo 0/2 > /proc/sys/kernel/randomize_va_space'"

export http_proxy="http://192.168.221.1:1080/"
export https_proxy=$http_proxy
alias lscan="python /home/q4n/sdb/lscan/lscan.py -S /home/q4n/sdb/lscan/amd64/sig -f $1"

alias fsize='du -h --max-depth=1'
```

## Usage

```bash
./start.sh
```

