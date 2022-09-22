# vimrc

My Vim/Neovim setup

This git repository doesn't actually sit in my home directory, even though the
files in it are supposed to be there. I've used a little trick to achieve
this: I used a bind-mount from `~/.vim/` to wherever this repo is in my
system.

There are two problems with this approach: the first is that it requires
super-user privileges, and the second is that it doesn't persist across
reboots. It's possible to make it persist, but that involves adding an entry
for it in `fstab`, and I don't want to do that because I don't need it to be
there every time I boot my computer, only when I'm working on this repo.

The solution I came up with is to just make a tiny C program that does this
one task: bind-mount the vim home to my repo so that I can start commiting
stuff to git, and then make that program set-user-id root, so that it has the
required permission to do so. This way, whenever I feel like hacking on my
.vimrc, I can just run ./bind-mount, and have everything ready, no need to
type in any password or anything.

As a bonus, I set up a makefile that facilitates building this program,
complete with a recipe that makes the suid magic happen. All you need to do is
`$ make`.
