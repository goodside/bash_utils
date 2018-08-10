# bash_utils
Miscellaneous MIT-licensed bash utilities I've collected or written for myself.

## Design goals

Bash is [not a good choice](https://stackoverflow.com/a/11369935) for writing
any substantial piece of software, with very few exceptions. This project
targets those exceptions and tries to make them less unwieldy.

Functionality I'm thinking about:
- Environment/library management and debugging
- Tools for making `source`-able scripts that are easy to reason about
- Interactive-mode convenience functions

## Install

Clone this repository to `~/bash_utils`:

```bash
git clone https://github.com/goodside/bash_utils.git ~/bash_utils
```

### `source` files

Files in this directory are meant to be included with `source $file` — not with `chmod +x`.

- `path.bash` — convenience functions for manipulating `PATH`
- `bash-preexec.sh` — packaged from [rcaloras/bash-preexec](https://github.com/rcaloras/bash-preexec)

### Example profile

```bash
BASH_UTILS_ROOT="$HOME/bash_utils/"
source $BASH_UTILS_ROOT/path.bash

# [ Existing body of .bash_profile ]

# bash-preexec.sh must be sourced at end of file if required:
source $BASH_UTILS_ROOT/bash-preexec.sh
```