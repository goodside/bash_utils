# bash_utils
Miscellaneous bash utilities I've written for myself.

## Install

Run:

```bash
git clone https://github.com/goodside/bash_utils.git ~/bash_utils
```

Put this is in your `.bashrc` or `.bash_profile`:

```bash
for f in ~/bash_utils/source/*; do
    [[ -f "$f" ]] && . "$f"
done
```
