# ~/.config/fish/functions/gitsync.fish

function gitsync --description "Muestra el workflow para sincronizar con Git"
    # Usamos set_color para que se vea más bonito
    set_color green
    echo "----- Mi Workflow de Sincronización -----"
    set_color normal
    
    echo "1. "
    set_color yellow
    echo "git status"
    set_color normal
    echo "   (Ver cambios)"

    echo "2. "
    set_color yellow
    echo "git add ."
    set_color normal
    echo "   (Añadir todo)"

    echo "3. "
    set_color yellow
    echo 'git commit -m "Tu mensaje"'
    set_color normal
    echo "   (Guardar cambios)"

    echo "4. "
    set_color yellow
    echo "git pull --rebase"
    set_color normal
    echo "   (Traer cambios del remoto)"

    echo "5. "
    set_color yellow
    echo "git push"
    set_color normal
    echo "   (Subir todo)"

    set_color green
    echo "----------------------------------------"
    set_color normal
end