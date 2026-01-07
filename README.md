# Configuración Mínima de Neovim

Configuración minimalista para Neovim >= v9.0

## Instalación

```bash
git clone https://github.com/davidruizdiaz/minimal_nvim.git ~/.config/nvim
```

| Nota importante: La ruta correcta es ~/.config/nvim, no ~/.local/share/nvim.

## Dependencias Requeridas


```bash
# Búsqueda rápida con Telescope (Recomendado)
sudo apt install ripgrep

```

## Mapeos de Teclas Principales

### Tecla Líder

```<leader>``` = Tecla Espacio (usada como prefijo para atajos)

### Navegación General

```<C-s>``` = Guardar archivo (Control + S)
```<S-h>``` = Buffer anterior (Shift + J)
```<S-l>``` = Siguiente buffer (Shift + L)

### Explorador de Archivos (NvimTree)

```<leader>e``` = Abrir/cerrar explorador
```<leader>r``` = Refrescar explorador
```<C-h>``` = Enfocar el explorador (Control + H)
```<C-l>``` = Volver al buffer anterior (Control + L)

### Búsqueda (Telescope)

```<leader>f``` = Buscar archivos por nombre
```<leader>s``` = Buscar texto en todos los archivos (live_grep)
```<leader>b``` = Listar buffers abiertos
```<leader>h``` =  Buscar en la documentación (help tags)
```<leader>l``` =  Abrir Lazy.nvim (gestor de plugins)

## Plugins Incluidos

1. Lazy.nvim - Gestor de plugins moderno
2. Telescope.nvim - Sistema de búsqueda de archivos y texto
3. NvimTree - Explorador de archivos en árbol
4. Catppuccin - Tema de colores elegante
5. nvim-cmp - Motor de autocompletado
6. nvim-html-css - Soporte para HTML/CSS

## Personalización

###Para cambiar mapeos de teclas:

Edita  ```lua/config/keymaps.lua```

### Para configurar plugins individualmente:

Edita los archivos en ```lua/plugins/```

### Para añadir nuevos plugins:

Crea un nuevo archivo en ```lua/plugins/nombre-plugin.lua```

Sigue el formato de los otros plugins

Reinicia Neovim o ejecuta ```:Lazy sync```

## Licencia
Liberado bajo la licencia MIT.
