# SVN Aware Prompt

## Overview

If you `cd` to a SVN working directory, you will see the current SVN relative URL
name displayed in your terminal prompt (based on the trunk/branches/tag pattern [svn common patterns]). When you're not in a SVN working
directory, your prompt works like normal.

[svn common patterns]: http://svnbook.red-bean.com/en/1.8/svn.branchmerge.commonpatterns.html


## Installation

Clone the project to a `.bash` folder in your home directory:

```bash
mkdir ~/.bash
cd ~/.bash
git clone git@github.com:malfter/svn-aware-prompt.git
```

Edit your `~/.bash_profile` or `~/.profile` and add the following to the top:

```bash
export SVNAWAREPROMPT=~/.bash/svn-aware-prompt
source $SVNAWAREPROMPT/main.sh
```


## Configuring

Once installed, there will be new `$svn_branch` and `$svn_dirty` variables
available to use in the `PS1` environment variable, along with a number of
color helper variables which you can see a list of in [colors.sh][].

[colors.sh]: https://TODO/svn-aware-prompt/blob/master/colors.sh

If you want to know more about how to customize your prompt, I recommend
this article: [How to: Change / Setup bash custom prompt (PS1)][how-to]

[how-to]: http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html


### Suggested Prompts

Below are a few suggested prompt configurations. Simply paste the code at the
end of the same file you pasted the installation code into earlier.


#### Mac OS X

```bash
export PS1="\u@\h \w \[$txtcyn\]\$svn_branch\[$txtred\]\$svn_dirty\[$txtrst\]\$ "
```

Optionally, if you want a nice pretty prompt when using `sudo -s`, also add
this line:

```bash
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
```


#### Ubuntu

Standard:

```bash
export PS1="\${debian_chroot:+(\$debian_chroot)}\u@\h:\w \[$txtcyn\]\$svn_branch\[$txtred\]\$svn_dirty\[$txtrst\]\$ "
```

Colorized:

```bash
export PS1="\${debian_chroot:+(\$debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$svn_branch\[$txtred\]\$svn_dirty\[$txtrst\]\$ "
```


## Updating

Assuming you followed the default installation instructions and cloned this
repo to `~/.bash/svn-aware-prompt`:

```bash
cd ~/.bash/svn-aware-prompt
git pull
```


## Thank you

This project based on [jimeh/git-aware-prompt].

Thank you for your work!

[jimeh/git-aware-prompt]: https://github.com/jimeh/git-aware-prompt



## License

[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/)
