# openai-kiss AKA ``hear|ask``
Simple shell scripts to access OpenAI APIs

# Dependencies

curl, jq, ffmpeg

# Installation

Type ``make`` to install to ``$HOME/.local/bin/``.

# Usage

Pipe input to ``ask`` and receive answer on stdout.
Session is tmux pane specific, and answer will be put in a tmux buffer.
Reset chat by calling with ``--new`` option.

For voice input, use ``hear|ask``.

# Configuration

Look in ``~/.config/oepnai/``.

## Custom prompt

Copy the state to a config file and symlink the executable.

```sh
$ ask << EOP
My custom prompt.
EOP
$ cp ~/.cache/openai-kiss/ask$TMUX_PANE.json ~/.config/openai-kiss/ask-alice.json
$ ln -s ~/.local/bin/ask ~/.local/bin/ask-alice
```

