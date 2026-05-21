    # 默认编辑器设置为nvim
    set -gx EDITOR "nvim"
    # 设置配置文件默认路径
    set -gx XDG_CONFIG_HOME "$HOME/.config"

if status is-interactive
    # Commands to run in interactive sessions can go here

# 中文环境
set -gx LANG zh_CN.UTF-8
set -gx LANGUAGE zh_CN:zh
set -gx LC_ALL zh_CN.UTF-8
set -gx LC_MESSAGES zh_CN.UTF-8

# DeepSeek接入Claude Code
set -x ANTHROPIC_BASE_URL https://api.deepseek.com/anthropic
set -x ANTHROPIC_AUTH_TOKEN sk-d174567e1b6441499d71e4a43f2c7e39
set -x ANTHROPIC_MODEL deepseek-v4-pro
set -x ANTHROPIC_DEFAULT_OPUS_MODEL deepseek-v4-pro
set -x ANTHROPIC_DEFAULT_SONNET_MODEL deepseek-v4-pro
set -x ANTHROPIC_DEFAULT_HAIKU_MODEL deepseek-v4-flash
set -x CLAUDE_CODE_SUBAGENT_MODEL deepseek-v4-flash
set -x CLAUDE_CODE_EFFORT_LEVEL max

    # 环境变量
    # fish_add_path /usr/local/bin
    # fish_add_path /opt/homebrew/bin
    # fish_add_path $HOME/.local/bin

    # 设置别名
    alias lg lazygit
    alias t trans
    alias tsh 'trans -shell'
	alias ff fastfetch

    # yazi 快捷键
    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        command yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end

    zoxide init fish | source
end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init2.fish 2>/dev/null || :


# Codely CODELY_HOME and PATH
set -gx CODELY_APP_HOME "/Applications/Tuanjie Cowork.app/Contents/MacOS"
set -gx CODELY_HOME "/Users/martin/Library/Application Support/Tuanjie Cowork/bin"
set -gx PATH $PATH $CODELY_APP_HOME $CODELY_HOME
# End Codely CODELY_HOME and PATH
