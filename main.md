---
title: "Vim: Text Editor for the Humanities"
author:

---

The first thing to note about Vim is that it is not merely an editor or a
family of editors sharing a common software pedigree (Ed, Vi, Vim, GVim,
NeoVim). Vim is also a philosophy of editing text--a way of doing things that
could be (and often is) implemented in various contexts. For this reason, it is
not our intention to start another text editor war. Vim-like modes are commonly
implemented in many modern text editors like Emacs and Sublime. It is also
possible to implement distinct ideas from Vim into other programs. There are
several plugins that offer Vim shortcuts for the browser, for example. Our plan
then is to talk about Vim as both an idea and a piece of software. Because
switching to Vim is not a trivial endeavor, we want you to understand the
stakes and the mind shift made possible by this elegant interface with the
word. We will begin then with the philosophy behind Vim editing and end with
the instrumental details of Vim as an editor.

## Key Concepts

What are the ideas behind the Vim way of doing things? Rather than divining the
intentions of the program's developers (Ken Thompson, Bill Joy, Bran Moolenaar,
and others) we will try to capture the spirit of the endeavor as we see it.

Let's start with the most obvious one: Vim is a **plain text** editor. That
means that you will use other tools to format and to set your text into print.
In Vim, text is just text--there are no italics or fancy fonts to speak of. We
use Markdown and Pandoc to format our texts and to generate files in Microsoft
Word, Open Office, Adobe Acrobat, and HTML formats. If that sounds limiting, it
is, on purpose! The general Unix philosophy towards developing software is "do
one thing and do it well." Rather than being mediocre at many things related to
word processing, Vim does one thing exceedingly well. Along with Emacs and a
few other candidates for the title, it is the most advanced *text editor*
available. There are other excellent, professional-grade tools created for the
typesetting and the formatting of text.[^ln-plain]

[^ln-plain]: On what these tools are and on the why it is good for our
community to work in plain text file formats read "Sustainable Authorship in
Plain Text using Pandoc and Markdown" By Dennis Tenen and Grant Grant Wythoff
in the [Programming
Historian](http://programminghistorian.org/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown).

Vim is further synonymous with **modal editing**. For someone coming from
mode-less text editing (Open Office, Microsoft Word, and pretty much every
other text box) modes, from all of Vim's special features, will require the
most cognitive adjustment. That adjustment comes quickly. Within a few hours of
practicing, modes will become completely natural. But be forewarned, that once
you unlock the power of modal editing, it will also forever mar all other ways
of interacting with text. You will want it everywhere: in your email and in
your to-do list.

The idea behind modal editing is simple. The process of writing consists of
several distinct kinds of operations, chief among them typing and manipulating
text. In most editors, those two things happen in the same "place" if you will.
Vim separates typing from text manipulation into different modes. You type in
what's called "Insert mode," which functions pretty much as you would expect.
But in "Normal mode" a whole new series of powerful text manipulation tools
becomes available to the writer. And because you are no longer typing, you can
use your keyboard for editing text. We will go over the commands in detail
later. For now, you can start Vim (gVim or NeoVim) and press `i` to enter
Insert mode (see bottom left of your screen). Press `Escape` to exit into
Normal mode again. As you get better at Vim you will spend more and more of
your time in Normal mode. To quit Vim, type `ZZ` from Normal mode or `:` and
then `q`.

The best thing about Normal mode, and the reason for Vim being a fitting tool
for the humanities, is that it is **text aware**. Text awareness means that the
editor intrinsically "understands" semantic humanly-meaningful units like
characters, words, sentences, and paragraphs. Say for example you want to
delete a word in your regular text editor. Pay attention to your exact
keystrokes. It is likely that you would either just backspace a few times until
the word is gone or use the mouse to select the word to be deleted. You can try
doing the same in Vim's Insert mode. But exit to Normal mode and you are now
able to delete the word under your cursor by typing `daw` in succession. The
keys `daw` stand for "delete a word."  Here's where things get neat. What do
you think `d3w` does? This stands for "delete three words." What about `das`?
In Normal mode, the incantation `das` stands for "delete a sentence." In either
case, the delete command will delete around your cursor position. `daw` and
`das` delete the current word and the current sentence, respectively (even when
your cursor is located mid-word or mid-sentence). `ci)` stands for "change
inside parentheses," and it automatically deletes all text inside parentheses,
and puts you in insert mode so that you can type replacement text. 

The small effect of modes and text awareness is the ease with which you can
begin to memorize text manipulation shortcuts. Vim wants to keep your fingers
at the keyboard, at home row, minimizing finger movement involved in chord-like
progressions like `Ctrl-C` and `Ctrl-P` (the usual way to copy and paste
selections, for example). Because you don't need to use the mouse that much (or
at all) when you are good at Vim and because the commands are compact, your
wrists remain relatively still. You don't even have to use the arrow keys,
since vim has very ergonomically relocated these to the home keys `hjkl`.  Many
writers report reduced hand strain. But these are small luxuries. The big
payoff of modes and text awareness is **command composability.** In some
important sense, Vim is a language for interacting with language. "Delete a
word" has a grammatical structure: a verb and a noun. Once you become fluent in
this language, you will be able to compose commands "on the fly," without
thinking or looking things up. A measure of flow and fluency becomes possible,
elevating mere editing into handcraft. As literary scholars we are biased
towards tools that understand language on its own terms.

As with any language, the road to fluency is not short. But compared to a
foreign language, Vim makes use of a small, controlled vocabulary. It is quick
to learn. You will be able to do most common tasks after a week or so of
practicing. And you can stop there. At a level of basic proficiency, Vim will
already feel like a professional tool, adequate to the task of composing text
with a sense of kinetic joy (some people liken it to being good at a video
game). But once you understand that Vim is a language, you may also start
getting interested in Vimscript, the computer language behind Vim. Although not
the most beloved of computer languages, Vimscript ultimately offers **a modular
toolkit for building your own editor.** Where other editors have fairly rigid
ideas about how writing and text editing should work, Vim gives you complete
control over all expects of word manipulation. For those not interested in
programming, hundreds if not thousands of modules are available, tailoring Vim
to individual needs and workflows. (We will cover the most common ones,
relevant to the humanities at the end of the article.)

To summarize, Vim philosophy is a set of related concepts that start with plain
text and lead to modal editing, text awareness, command composability, and,
finally, a language for building your own customized text editing software. Any
of these ideas could be implemented independently of Vim. Vim just happens to
implement all of them in one small package, installed on most of the world's
computers (except for Windows) by default since the 1970s, available for free,
and in open-source, making further modification possible. We want more
humanists to use Vim because we want our community to build better interfaces
with the word. The editor is at the center of everything that we do and we need
to take ownership of material contexts of knowledge production.

## Getting Started with Vim

It is not our intention to supplant the many excellent tutorials on how to get
started with Vim (including Vim tutor, which, if you run Linux or MacOS,  
can be started simply by typing the command `vimtutor` at your terminal). 

Run vimtutor. 

Modes:

Modifiers (adverbs): 

 * `8`: "perform the next command 8 times"  

Commands (verbs):
 
 * `d`: "delete" 
 * `y`: "yank, or copy" 

Prepositions: 
 
 * `i`: "inside" 
 * `t`: "until" 

Text Objects (nouns):
 
 * `s`: "sentence" 
 * `$`: "the end of the current line" 
 * `%`: "until finding the matching bracket, parenthesis, or other entity" 

Several common commands composed from these words: 

 * `dt,` "delete until the comma" 
 * `di"` "delete inside the quotation marks"  
 * `8.` "run the last command another 8 times" 
 * `y%` "copy (yank) all text until the matching bracket or parenthesis" 


## Vim for Prose
The barrier to entry into Vim for the non-programmer is its code-centric
"out-of-the-box" defaults. We therefore intend to discuss the issue of
setting-up Vim for prose editing in particular in this section. In the next
section, we will conclude by suggesting a few "quality of life" improvements
that go beyond basic functionality.

Because Vim is a toolkit for building a better editor, we need to do some work
to customize for writing prose.

The importance of .vimrc.

A minimally viable .vimrc for prose. Annotated.

```viml
" Turns off vintage backwards-compatibility with the `vi` editor. 
set nocompatible

" This makes it so that vim doesn't try to automatically format long lines 
" of prose as if they were code.
setlocal formatoptions=l 

" Turn on word wrapping, to avoid typing really long lines that extend horizontally. 
set wrap

" Break lines on words, instead of characters, which looks better for prose. 
set linebreak

" Use `j` and `k` to move within wrapped lines, in addition to ordinary lines. 
map j gj
map k gk
```

## Common Addons
Go for minimal here again. 

 * [vim-pencil](https://github.com/reedes/vim-pencil): tweaks that make vim
   better for prose writing. 
 * [vim-surround](https://github.com/tpope/vim-surround): adds "nouns" that
   allow you to easily change surrounding punctuation marks or tags. Use `cs'"`
   to change surrounding single quotes to double quotes, for example.
 * [NERDTree](https://github.com/scrooloose/nerdtree): allows you to open a
   sidebar that shows a list of the files in your current directory.  
