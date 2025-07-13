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

📡 Homebrew (Gerenciador de Pacotes) <br/>
```bash /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" ``` <br/>
```bash echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc ``` <br/>
```bash source ~/.zshrc ``` <br/>

🛠️ Instalação
Oh My Zsh (Framework Zsh) <br/>
```bash brew install zsh``` <br/>
```bash  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ``` <br/>

🔌 Plugins Recomendados
Plugin	Comando	Benefício <br/>
1. Autosuggestions	```bash brew install zsh-autosuggestions ``` 	🛠️ Completa comandos automaticamente<br/>
2. Syntax Highlighting	```bashbrew install zsh-syntax-highlighting ```	🛠️ Destaca sintaxe dos comandos<br/>
3. Zoxide	```bash brew install zoxide	``` 🛠️ Navegação inteligente entre pastas<br/>
4. FZF	```bash brew install fzf && $(brew --prefix)/opt/fzf/install```	🛠️ Busca fuzzy super rápida<br/>

🧰 Ferramentas Essenciais
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

☁️ Cloud Tools
```bash
brew install \
  awscli \
  terraform \
  kubectl \
  helm \
  k9s
```

⚙️ Java Ecosystem (via SDKMAN!) <br/>
```bash curl -s "https://get.sdkman.io" | bash ``` <br/>
```bash source "$HOME/.sdkman/bin/sdkman-init.sh" ``` <br/>
```bash sdk install java 21.0.0-tem ``` <br/>

🗂️ Copiar configuração completa (https://github.com/andradesampaio/shell-setup/blob/main/.zshrc)

💡 Dicas e Atalhos
Comandos Úteis

1. check_env      # Verifica todas as ferramentas
2. atalhos        # Lista seus atalhos personalizados
3. z <pasta>      # Navegação inteligente (zoxide)

📋 Teclas de Atalho 
1. Ctrl+R: Busca no histórico com FZF
2. Ctrl+T: Busca de arquivos
3. Alt+C: Navegação entre pastas

🧰 Manutenção <br/>
Atualizar Tudo <br/>
```bash brew update && brew upgrade ``` <br/>
```bash omz update ``` <br/>
```bash sdk selfupdate ``` <br/>

🔄 Solução de Problemas <br/>
Se plugins não carregarem: <br/>
```bash exec zsh ```

🧹 Limpar cache: <br/>
```bash rm ~/.zcompdump* ``` <br/>

🌟 Recomendações Finais <br/>
1. Reinicie o terminal após mudanças
2. Personalize aliases no seu .zshrc
