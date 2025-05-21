#!/bin/bash

set -e

echo "🚫 Removendo painel de monitoramento..."

# Remover links simbólicos
sudo rm -f /usr/local/bin/lzd
sudo rm -f /usr/local/bin/dash

# Remover script
rm -f ~/dashboard.sh

# Remover lazydocker se quiser (comente essa linha se quiser manter)
rm -f ~/.local/bin/lazydocker

echo "✅ Painel removido com sucesso!"
echo ""
echo "ℹ️ Se você deseja manter o lazydocker, reinstale com:"
echo "   curl -s https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash"
