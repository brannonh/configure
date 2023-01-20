function __node_binpath_cwd -v PWD
  set -l index 0
  for p in $PATH
    set index (math $index + 1)
    if string match -q '*/node_modules/.bin*' $p
      set -e PATH[$index]
    end
  end

  set -l node_bin_path "$PWD/node_modules/.bin"
  if test -e "$node_bin_path"
    and not contains -- $node_bin_path $PATH
    set -x PATH $PATH $node_bin_path
  end
end

__node_binpath_cwd $PWD
