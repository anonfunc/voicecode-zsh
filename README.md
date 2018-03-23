# ZSH Support for VoiceCode

This adds [VoiceCode](https://voicecode.io) support for zsh, namely selection support and undo bindings.

Pull requests are welcome. :smile:

## Prerequisites

You must be using iTerm2 and ZSH.

## Installation

### Clone this repo into the Voicecode home directory

By default, this is `~/voicecode`, so:

    git clone https://github.com/anonfunc/voicecode-zsh.git ~/voicecode/zsh


### Make required changes:

- Add `source ~/voicecode/zsh/selection.zsh` to your ~/.zshrc
- Optional: Change cursor style from block to vertical line.  This makes selection behavior less confusing.

## Try some commands.

- Selection commands: `trail`, `crew`, `scram`, `spando`

### You should not need to restart VoiceCode, but if it doesn't work... restart VoiceCode.

## Limitations

- ZSH must be using Emacs style key bindings, the default.
- VoiceCode uses the clipboard to get selected text, so clipboard commands will interact with zsh's selection, not your terminal emulator.
  - This means that CMD-C will have different behavior than `stoosh`, and that mouse selections will not be usable with VoiceCode.
  - It also means that once something is printed on the screen, you cannot use `trail` to select it.
- Selection color is currently blue, and not configurable.
- If you are also using the `vim` VoiceCode package, I'm not sure what will happen, but various things will break.

# Credits

- http://stackoverflow.com/questions/5407916/zsh-zle-shift-selection
- https://superuser.com/questions/604812/how-to-execute-a-function-in-bash-or-zsh-on-every-letter-being-typed-into-prompt