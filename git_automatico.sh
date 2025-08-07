# isso foi feito com o objetivo de automatizar o git e com o chatgpt :/
#!/bin/bash

# Verifica se há mensagem de commit
if [ -z "$1" ]; then
  echo "⚠️  Por favor, forneça a mensagem do commit:"
  echo "Uso: ./git_commit_push.sh \"sua mensagem aqui\""
  exit 1
fi

# Configurações iniciais
BRANCH="main" # Altere para 'master' se for o seu caso
REMOTE="origin"

# Inicia o repositório, se ainda não existir
if [ ! -d ".git" ]; then
  echo "🔧 Inicializando repositório Git..."
  git init
fi

# Adiciona arquivos
echo "➕ Adicionando arquivos..."
git add .

# Faz o commit
echo "✅ Commitando com a mensagem: $1"
git commit -m "$1"

# Adiciona o repositório remoto (se ainda não existir)
if ! git remote | grep -q "$REMOTE"; then
  echo "🔗 Qual a URL do repositório remoto no GitHub?"
  read REMOTE_URL
  git remote add $REMOTE "$REMOTE_URL"
fi

# Envia para o GitHub
echo "🚀 Enviando para o GitHub..."
git push -u $REMOTE $BRANCH

echo "✅ Tudo pronto!"
