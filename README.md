# bash_utils
Miscellaneous bash utilities I've written for myself.

## Install

Clone this repository to `~/bash_utils`:

```bash
git clone https://github.com/goodside/bash_utils.git ~/bash_utils
```

### Source-able files

To load all included utilities, put this is in your `.bashrc` or `.bash_profile`:

```bash
include () {
    [[ -f "$1" ]] && . "$1"
}
for f in ~/bash_utils/source/*; do
    include $f
done
```

Or, if you'd prefer load the files selectively:
```bash
include () {
    [[ -f "$1" ]] && . "$1"
}
include ~/bash_utils/source/path.bash
include ~/bash_utils/source/bash-preexec.sh
```