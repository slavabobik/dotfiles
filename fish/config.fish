set fish_greeting ""


starship init fish | source

function __uv_auto_venv_find
    set -l dir $PWD
    while true
        if test -f "$dir/.venv/bin/activate.fish"
            echo "$dir/.venv"
            return 0
        end
        if test "$dir" = "/"
            return 1
        end
        set dir (path dirname "$dir")
    end
end

function __uv_auto_venv --on-variable PWD
    set -l target (__uv_auto_venv_find)

    if test $status -eq 0
        if not set -q VIRTUAL_ENV; or test "$VIRTUAL_ENV" != "$target"
            if set -q VIRTUAL_ENV; and functions -q deactivate
                deactivate >/dev/null 2>/dev/null
            end
            source "$target/bin/activate.fish"
        end
    else if set -q VIRTUAL_ENV; and string match -q "*/.venv" "$VIRTUAL_ENV"
        if functions -q deactivate
            deactivate >/dev/null 2>/dev/null
        end
    end
end

__uv_auto_venv

# uv
fish_add_path "/Users/slavabobik/.local/bin"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
