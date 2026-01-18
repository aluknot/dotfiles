# ===================================================================
# 1. INICIALIZACIÓN DE HOMEBREW (DEBE SER LO PRIMERO)
# Esta línea le dice a fish dónde encontrar los comandos de Homebrew.
# ===================================================================
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# ===================================================================
# 2. CONFIGURACIÓN DE HERRAMIENTAS
# Ahora ya podemos usar comandos como starship y direnv.
# ===================================================================

# Variable para que Starship encuentre el config en tus dotfiles
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# Setea Go al PATH
set -U fish_user_paths /usr/local/go/bin $fish_user_paths

# Configurar GOPATH
set -Ux GOPATH $HOME/proyectos/go

# Agregar binarios del GOPATH al PATH
set -U fish_user_paths $GOPATH/bin $fish_user_paths

# ===================================================================
# 3. (Opcional) Limpieza de los logs de direnv
# Ya que tienes la última versión, puedes usar el .toml o esta variable.
# ===================================================================
set -gx DIRENV_LOG_FORMAT ""

if status is-interactive
    # Quitar el mensaje de bienvenida de fish
    set -U fish_greeting

    # Inicializar Starship
    starship init fish | source

    # Inicializar zoxide
    zoxide init fish | source

    # Inicializar direnv
    direnv hook fish | source

    alias l="eza -lh --icons"
    alias la="eza -lha --icons"
    alias lt="eza --tree --icons"
    alias bat="batcat"

    function tldrf
        tldr --list | fzf --preview "tldr {1}" --preview-window=right:60% | xargs tldr
    end
end
