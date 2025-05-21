#!/bin/bash

set -e  # para parar se algo falhar

echo "🔧 Instalando dependências (tmux e btop)..."
sudo apt update
sudo apt install -y tmux btop curl

echo "📦 Instalando LazyDocker..."
curl -s https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

echo "✅ LazyDocker instalado em ~/.local/bin/lazydocker"

echo "🛠️ Criando script ~/dashboard.sh..."
cat > ~/dashboard.sh << 'EOF'
#!/bin/bash

# Sempre mata sessão antiga
tmux has-session -t dashboard 2>/dev/null && tmux kill-session -t dashboard

# Cria nova sessão com btop na esquerda
tmux new-session -d -s dashboard -n main 'btop'

# Abre lzd na direita
tmux split-window -h -t dashboard:0 'lzd'

# Quando todos os painéis forem fechados, encerra a sessão
tmux set-option -t dashboard remain-on-exit off

# Atalho para matar a sessão com Prefix + d
tmux bind-key -T root d kill-session

# Anexa ao tmux
tmux attach-session -t dashboard
EOF

chmod +x ~/dashboard.sh
echo "✅ Script dashboard criado e tornado executável."

echo "🔗 Criando link simbólico global para lzd..."
sudo ln -sf ~/.local/bin/lazydocker /usr/local/bin/lzd

echo "🔗 Criando link simbólico global para dash..."
sudo ln -sf ~/dashboard.sh /usr/local/bin/dash

echo ""
echo "✅ Instalação concluída com sucesso!"
echo ""
echo "🖥️ Use os comandos abaixo a qualquer momento:"
echo ""
echo "  ▶️  dash     → abre painel de monitoramento (tmux com btop + lazydocker)"
echo "  🐳  lzd      → abre apenas o lazydocker"
echo ""
echo "🔚 Para sair do painel, feche ambos os painéis com Ctrl+C"
echo "   ou use Ctrl+b + d para encerrar a sessão diretamente."
echo ""
