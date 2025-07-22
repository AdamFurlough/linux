# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Count files function
count_files() {
  dir="${1:-.}"
  files=$(ls -1 "$dir" 2>/dev/null | wc -l)
  echo "There are $files files in directory: $dir"
}

# Quick file backup copy
save_me() {
  if [ -f "$1" ]; then
    cp "$1" "$1.bak"
    echo "Created $1.bak in case you screw this up"
  else
    echo "Error: File '$1' not found."
  fi
}
