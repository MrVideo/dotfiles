#  dotfiles Backup Repository

This repository is used to host my config files (a.k.a. dotfiles), to keep a backup of them.

The method used was inspired by [DistroTube's video](https://www.youtube.com/watch?v=tBoLDpTWVOM). Some of the commands used here are taken directly from his video's description. Go subscribe to his channel, he makes awesome Linux content. 

## Setup

This works using a *git bare* repository. You can create one yourself following these steps:

1. **Create a directory for your dotfiles**

	You can do so by using the command `mkdir`:
	```bash
	mkdir ~/.dotfiles
	```
	This command will add a hidden directory in your home folder.
2. **Setup Git in the dotfiles folder**

	Move into the `.dotfiles` folder you just created and run the following command:
	```bash
	git init --bare
	```
	This will create the folder structure usually found in the hidden directory `.git` inside the `.dotfiles` directory.
3. **Create a new GitHub repository and add it as a remote**

	Create a new GitHub repo and copy its SSH url. Then, using the terminal, add the remote using this command:
	```bash
	git remote add repourl.git
	```
	Of course, you should use your real SSH url in the command.
4. **Add an alias to your `.zshrc` for convenience**

	Add the following line to your `.zshrc` to be able to easily add and commit to this repo:
	```bash
	alias config='git --git-dir=/Users/username/.dotfiles --work-tree=/Users/username
	```
	This will make so that every time you want to add or commit stuff to your repo, you can easily do that from anywhere through the new alias `config add .file`.
5. **Remove untracked files warning**

	Since our working tree is our very own home directory, there will be many untracked files that we will ignore. To avoid clutter in the terminal, you can use the following command:
	```bash
	config config --local status.showUntrackedFiles no
	```
6. **Add your dotfiles to the repo**

	You can add any file to your repo through the command:
	```bash
	config add path/to/file
	```
	You can commit in the same way through the command:
	```bash
	config commit -m "Message"
	```
	You can check your working tree with the command:
	```bash
	config status
	```
7. **Push your directory to GitHub**

	The first time you push this repository to GitHub, use the command:
	```bash
	config push --set-upstream origin master
	```
	You can change `master` for another name for your branch (another very common name is `main`).
	Further commits can be done through:
	```bash
	config push
	```
