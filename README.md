# 🍏✨ Terminal Super Setup para Mac M1/M2

![Terminal Preview](https://img.shields.io/badge/macOS-Terminal_Optimizado-blue?logo=apple&style=for-the-badge)

Um guia completo para transformar seu terminal em uma máquina de produtividade para desenvolvimento backend/cloud no macOS.

## 📋 Índice
- [Pré-requisitos](#-pré-requisitos)
- [Instalação](#-instalação)
- [Plugins](#-plugins-recomendados)
- [Ferramentas](#-ferramentas-essenciais)
- [Configuração](#⚙️-configuração)
- [Dicas](#💡-dicas-e-atalhos)
- [Manutenção](#🔄-manutenção)

---

## 🍎 Pré-requisitos

### Homebrew (Gerenciador de Pacotes)
```bash /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ```\
```bash echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc ```\
```bash source ~/.zshrc ```\


## 🛠️ Instalação
Oh My Zsh (Framework Zsh)\
```bash brew install zsh```\
```bash  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ```\

🔌 Plugins Recomendados
Plugin	Comando	Benefício
Autosuggestions	```bash brew install zsh-autosuggestions ``` 	🛠️ Completa comandos automaticamente\
Syntax Highlighting	```bashbrew install zsh-syntax-highlighting ```	🛠️ Destaca sintaxe dos comandos\
Zoxide	```bash brew install zoxide	``` 🛠️ Navegação inteligente entre pastas\
FZF	```bash brew install fzf && $(brew --prefix)/opt/fzf/install```	🛠️ Busca fuzzy super rápida\

🛠️ Ferramentas Essenciais
Dev Tools
```bash
brew install \
  git \
  docker \
  lazygit \
  go \
  python \
  node \
  ruby
```

🛠️ Cloud Tools
```bash
brew install \
  awscli \
  terraform \
  kubectl \
  helm \
  k9s
```

⚙️ Java Ecosystem (via SDKMAN!)
```bash curl -s "https://get.sdkman.io" | bash ```\
```bash source "$HOME/.sdkman/bin/sdkman-init.sh" ```\
```bash sdk install java 21.0.0-tem ```\

📋 Copiar configuração completa (https://github.com/andradesampaio/shell-setup/blob/main/.zshrc)

💡 Dicas e Atalhos
Comandos Úteis

1. check_env      # Verifica todas as ferramentas\
2. atalhos        # Lista seus atalhos personalizados\
3. z <pasta>      # Navegação inteligente (zoxide)\

📋Teclas de Atalho
1. Ctrl+R: Busca no histórico com FZF\
2. Ctrl+T: Busca de arquivos\
3. Alt+C: Navegação entre pastas\

🔄 Manutenção
Atualizar Tudo
```bash brew update && brew upgrade ```\
```bash omz update ```\
```bash sdk selfupdate ```\

🛠️  Solução de Problemas
# Se plugins não carregarem:
```bash exec zsh ```

# Limpar cache:
```bash rm ~/.zcompdump* ```

🌟 Recomendações Finais
1. Reinicie o terminal após mudanças
2. Personalize aliases no seu .zshrc
