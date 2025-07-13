# Caminho para Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"

# Tema produtivo e leve
ZSH_THEME="robbyrussell"

# Plugins essenciais para dev backend/cloud
plugins=(
  git
  z
  docker
  aws
  terraform
  kubectl
  colored-man-pages
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Zsh Autosuggestions (instale com: brew install zsh-autosuggestions)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

# Configurações do shell
setopt CORRECT           # Corrige digitação de comandos
setopt SHARE_HISTORY     # Compartilha histórico entre abas
setopt AUTO_CD           # Entra na pasta só com o nome

# Histórico inteligente com setas ↑ ↓
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# === Atalhos úteis ===
alias cls='clear'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias tf='terraform'
alias tfinit='terraform init'
alias k='kubectl'
alias kctx='kubectl config current-context'
alias klogs='kubectl logs -f'
alias lg='lazygit'
alias dusage='du -h -d 1'
alias dfree='df -h'
alias ls='ls -G'
alias grep='grep --color=auto'
alias atalhos='cat ~/.zsh_aliases_help'
[ -f ~/.zsh_aliases_help ] || touch ~/.zsh_aliases_help

# Função para checagem do ambiente dev
check_env() {
  echo "📦 Checando ambiente de desenvolvimento:"
  echo "Go:         $(go version 2>/dev/null || echo '❌ Go não encontrado')"
  echo "Java:       $(java -version 2>&1 | head -n 1 || echo '❌ Java não encontrado')"
  echo "Python:     $(python3 --version 2>/dev/null || echo '❌ Python não encontrado')"
  echo "Terraform:  $(terraform version | head -n 1 2>/dev/null || echo '❌ Terraform não encontrado')"
  echo "AWS CLI:    $(aws --version 2>/dev/null || echo '❌ AWS CLI não encontrado')"
  echo "Kubectl:    $(kubectl version --client 2>/dev/null | head -n 1 || echo '❌ kubectl não encontrado')"
}

# === Go ===
export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

# === Android SDK ===
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"

# === Node e Ruby ===
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# Histórico do shell
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# Ferramentas auxiliares

# zoxide (melhor navegação de diretórios)
eval "$(zoxide init zsh)"

# fzf (fuzzy finder) – precisa instalar e rodar script de setup:
# brew install fzf && $(brew --prefix)/opt/fzf/install
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
