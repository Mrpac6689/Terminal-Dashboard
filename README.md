# 🖥️ Terminal Dashboard para Linux

Um painel minimalista, eficiente e 100% terminal, combinando `btop` e `lazydocker` em uma interface organizada via `tmux`.

Ideal para quem quer **monitorar containers e recursos do sistema** com agilidade e estilo hacker raiz. Sem GUI, sem frescura.

---

## 🚀 Instalação

Execute o script de instalação:

```bash
chmod +x install_dashboard.sh
./install_dashboard.sh
```

Esse script irá:

- Instalar `tmux`, `btop` e `lazydocker`
- Criar o script `~/dashboard.sh`
- Criar os comandos globais:
  - `dash` → painel completo
  - `lzd`  → apenas lazydocker

---

## 🧰 Uso

- Para iniciar o painel:

```bash
dash
```

- Para abrir apenas o LazyDocker:

```bash
lzd
```

- Para encerrar o painel:
  - Feche ambos os painéis com `Ctrl+C`
  - Ou pressione `Ctrl+b` seguido de `d` para encerrar via atalho

---

## ❌ Desinstalação

Para remover completamente o painel e os atalhos criados:

```bash
chmod +x uninstall_dashboard.sh
./uninstall_dashboard.sh
```

---

## 📎 Requisitos

- Distribuições baseadas em Debian/Ubuntu
- Bash, sudo e conexão com a internet
- Terminal com suporte a `tmux`

---

## ✨ Screenshots (opcional)

Se quiser, adicione uma imagem do painel em funcionamento:

```
[ terminal screenshot ]
```

---

Feito com café, terminal e ❤️ por [Michel Paes](https://github.com/seuuser)
