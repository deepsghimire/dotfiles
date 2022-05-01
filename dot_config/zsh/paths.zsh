#paths
typeset -U path #preserve uniqueness of directories
path=("$HOME/.local/bin" $path)
path=("$HOME/go/bin" $path)
path=("$HOME/bin" $path)
path=("$HOME/.cargo/bin" $path)

