# VIM Notes

My personal vim notations to refresh knowledge.

## File management

- `ZZ` : faster `:wq`
- `:saveas path/name`

## Motions

### Basic navigation

- `0`: goes to the beginning of the line
- `$`: goes to the end of the line
- `f{char}`: goes to the next {char}
- `F{char}`: goes to the last {char}
- `ctrl + d`: moves down half a page
- `ctrl + u`: moves up half a page
- `ctrl + f`: moves down a full page
- `ctrl + b`: moves up a full page
- ``

#### Moving within the line

- `0`: move to the beginning of the line
- `$`: move to the end of the line
- `^`: move to the first non-blank char of the line
- `f{char}`: jump to the next occurrence of the char.
- `t{char}`: jump just before the next occurrence of the char.

##### Moving by word

- `w`: forward one word
  - `W`: upper case ignores some delimiters that may break into 2 words
- `b`: back one word
  - `W`: upper case ignores some delimiters that may break into 2 words
- `e`: move to the end of your word

#### Text navigation

- `(`: moves one sentence up
- `)`: moves one sentence down
- `{`: moves one paragraph up
- `}`: moves one paragraph down

#### Moving within the screen

- `H`: to top of the screen
- `M`: to middle of the screen
- `L`: to bottom of the screen

### Insert

- `i`: insert before the cursor
  - `I`: insert at the beginning of the line
- `a`: insert after the cursor
  - `A`: insert at the end of the line
- `o`: insert after the current line
  - `O`: insert before the current line
- `s`: delete current char and enter insert mode

### Copy and paste

- `y`: copy text
  - `yy`: copy whole line
  - `yi{char}`: copy inside {char}
  - `ya{char}`: copy around {char}
- `p`: paste the copied or deleted text under the cursor
  - `P`: paste the copied or deleted text before the cursor

### Delete

- `d`: delete
  - `dd`: delete whole line
  - `dw`: delete word from cursor
  - `diw`: delete entire word on cursor
  - `dt{char}`: deletes until {char}
  - `dis`: delete sentence
  - `dip`: delete paragraph
  - `D`: delete to end of line
- `x`: exterminate under cursor
  - `X`: exterminate char before cursor
- `J` : une la línea actual con la siguiente, `3J` une 3 líneas eliminando `\n`

_Trick_ `ddp`: switch current line with the next

### Search

Search for strings, this can be done while running other commands to, for
example, delete until string is found.

- `/`: enters search mode
  - `n`: will go to the next found item
  - `N`: will go to the previous found item
- `*`: will search the next word under the cursor
- `#`: will search the previous word under the cursor

### Bookmarks

- `m{char}`: will mark the current position under {char}
- `\backtick{char}`: will return to the bookmark under {char}
  - `\backtick.`: will return to the last edited place

### Replacing

- `r`: replace the char under your cursor
- `R`: start replacing mode
- `c`: change
  - `ciw`: change current word
- `C`: change the current line from where you're at
- `s`: substitute from where you're at to the next command
- `S`: substitute the entire current line

- `:s/str1/str2/g`: replaces all instances of str1 in current line with str2

  - Removing `g` will only replace the first one
  - Replacing `s` with `%s` will replace in the entire document
  - Replacing `s` with `{n},{m}s` will replace on la line range (`n` & `m`
    included)

### Spelling

:set spell spelllang=en_us

- `s`: toggle spell checking (by custom configuration)

- `]s`: go to the next misspelled word
- `[s`: got to the last misspelled word
- `z=`: on a misspelled word get some suggestions
  - `zg`: mark misspelled word as correct
  - `zw`: mark good word as misspelled

### MAGIC

- `.`: repeats the last operation

## Extensions

### [nvim-surround](https://github.com/kylechui/nvim-surround)

- Change quotes: `cs'"`
- Remove parenthesis: `ds)`
- Surround word with `<char>`: `ysiw<char>`
- Remove HTML tags: `dst`
