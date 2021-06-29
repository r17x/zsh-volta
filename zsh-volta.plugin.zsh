command -v volta &>/dev/null || {
  print -P "%F{33}▓▒░ %F{34}checking %F{33}Volta%F{220}...%f"
  export VOLTA_HOME="$HOME/.volta"
  export PATH="$VOLTA_HOME/bin:$PATH"
  command -v volta &>/dev/null || {
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}Volta%F{220}…%f"
    curl -fsSL https://get.volta.sh | bash
    print -P "%F{33}▓▒░ %F{34} ✅ %F{33}Volta%F{220} installation succeeded %f%b"
  }
  print -P "%F{33}Volta%F{220} was installed in %F{160}$VOLTA_HOME%F{220}%f%b"
}
