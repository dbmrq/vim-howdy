# howdy.vim

A tiny MRU start screen for Vim.

<img src="https://user-images.githubusercontent.com/15813674/26856532-9270d4f4-4afa-11e7-829f-c97bcec3263e.png" width="700"/>


## Usage

- Install Howdy using your favorite plugin manager or copy each file to its corresponding directory under `~/.vim/`.

- Type `<CR>` to open a file.

- Type `q` to exit to a markdown scratch buffer.

- If there are files you want Howdy to ignore, add the patterns to be matched to `g:howdy_ignore`:

      let g:howdy_ignore = [ 'vim\/runtime\/doc\/.*.txt' ]

  (That's the default, causing Howdy to ignore Vim's help files.)
  
- Use `:Howdy` to open Howdy anytime.

That's it!


## See also

You may also be interested in my other plugins:

- [Ditto: highlight overused words](https://github.com/dbmrq/vim-ditto) :speak_no_evil:
- [Redacted: the best way to ████ the ████](https://github.com/dbmrq/vim-redacted) :no_mouth:
- [Dialect: project specific spellfiles](https://github.com/dbmrq/vim-dialect) :speech_balloon:
- [Chalk: better fold markers](https://github.com/dbmrq/vim-chalk) :pencil2:


