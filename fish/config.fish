if status is-interactive
    # Commands to run in interactive sessions can go here

    # 默认编辑器设置为nvim
    set -x EDITOR nvim
    # 设置配置文件默认路径
    set -x XDG_CONFIG_HOME $HOME/.config

    # 配置中文环境
    set -gx LANG zh_CN.UTF-8
    set -gx LANGUAGE zh_CN:zh

    # 环境变量
    fish_add_path /usr/local/bin
    fish_add_path /opt/homebrew/bin
    fish_add_path $HOME/.local/bin

    # 设置别名
    abbr lg lazygit
    abbr vi nvim
    abbr ff fastfetch
    abbr t trans
    abbr tsh 'trans -shell'

    zoxide init fish | source
    starship init fish | source

    # yazi 快捷键
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        command yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end
end
