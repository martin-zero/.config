if status is-interactive
    # Commands to run in interactive sessions can go here

    # 默认编辑器设置为nvim
    set -x EDITOR nvim
    # 设置配置文件默认路径
    set -x XDG_CONFIG_HOME $HOME/.config

    # 配置中文环境
    set -x LANG zh_CN.UTF-8
    set -x LANGUAGE zh_CN:zh
    set -x LC_ALL zh_CN.UTF-8

    # 配置Android SDK环境变量
    set -x ANDROID_HOME $HOME/Library/Android/sdk
    set -x ANDROID_SDK_ROOT $ANDROID_HOME
    set -x PATH $PATH:$ANDROID_HOME/platform-tools
    set -x PATH $PATH:$ANDROID_HOME/tools/bin

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
