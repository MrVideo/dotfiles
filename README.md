#  dotfiles Backup Repository

This repository is used to host my config files (a.k.a. dotfiles), to keep a backup of them.

The method used was inspired by [DistroTube's video](https://www.youtube.com/watch?v=tBoLDpTWVOM). Some of the commands used here are taken directly from his video's description. Go subscribe to his channel, he makes awesome Linux content.

## Summary

* [Setup the Git repo for yourself](#setup-the-git-repo-for-yourself)
* [Installing the dotfiles on a new machine](#installing-the-dotfiles-on-a-new-machine)

## Setup the Git repo for yourself

This works using a *git bare* repository. You can create one yourself following these steps:

1. **Create a directory for your dotfiles**

    You can do so by using the command `mkdir`:

    ```bash
    mkdir ~/.dotfiles
    ```

    This command will add a hidden directory in your home folder.

1. **Setup Git in the dotfiles folder**

    Move into the `.dotfiles` folder you just created and run the following command:

    ```bash
    git init --bare
    ```

    This will create the folder structure usually found in the hidden directory `.git` inside the `.dotfiles` directory.

1. **Create a new GitHub repository and add it as a remote**

    Create a new GitHub repo and copy its SSH url. Then, using the terminal, add the remote using this command:

    ```bash
    git remote add repourl.git
    ```

    Of course, you should use your real SSH url in the command.

1. **Add an alias to your `.zshrc` for convenience**

    Add the following line to your `.zshrc` to be able to easily add and commit to this repo:

    ```bash
    alias config='git --git-dir=/Users/username/.dotfiles --work-tree=/Users/username
    ```

    This will make so that every time you want to add or commit stuff to your repo, you can easily do that from anywhere through the new alias `config add .file`.

1. **Remove untracked files warning**

    Since our working tree is our very own home directory, there will be many untracked files that we will ignore. To avoid clutter in the terminal, you can use the following command:

    ```bash
    config config --local status.showUntrackedFiles no
    ```

1. **Add your dotfiles to the repo**

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

1. **Push your directory to GitHub**

    The first time you push this repository to GitHub, use the command:

    ```bash
    config push --set-upstream origin master
    ```

    You can change `master` for another name for your branch (another very common name is `main`).
    Further commits can be done through:

    ```bash
    config push
    ```

## Installing the dotfiles on a new machine

I created a shell script that can auto-install the same dotfiles contained in the repo.

1. Clone this repository somewhere on your machine (not in your home folder) or download a .zip of the code and unzip it in your Downloads folder
1. Open a terminal and navigate to the repo with the `cd` command.
1. You should now be able to change the script's permissions through the `chmod` command, like this:

    ```bash
    chmod +x .scripts/setup.sh
    chmod +x .scripts/brew-bundle.sh
    ```

    To do this, you should be inside the root folder of the repository.

1. Run the `setup.sh` script with administrator permissions:

    ```bash
    sudo ./.scripts/setup.sh
    ```

    This will:

    1. Install Brew and the files contained in the Brewfile
    1. Restore your dotfiles in their original location
    1. Create a crontab to manage the automatic backup of your Brewfile
