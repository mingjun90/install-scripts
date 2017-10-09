cat >> ~/.gitconfig << HEREDOC
[alias]
    alias = !git config --global --list | grep ^alias
    br = branch
    ci = commit
    co = checkout
    head = rev-list -n1 --abbrev-commit HEAD
    hist = log --graph --format=format:\"%C(red)%h%C(reset) %C(yellow)%ad%C(reset) | %s %C(green)\\[%an\\]%C(reset)%C(bold blue)%d%C(reset)\" --abbrev-commit --date=short
    root = rev-parse --show-toplevel
    st = status
    tree = log --oneline --decorate --all --graph
[color "branch"]
    upstream = magenta
[core]
    editor = vim
HEREDOC

