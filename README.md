# maildotool

Tool to execute commands via gmail. It can read gmail, recognize if sender is
authorized to issue commands, recognize the command code and execute a 
coresponding command found in configuration file.
The goal is to create a cheap and easy way to interface a computer remotely.

After installing the package, all files are located in $HOME/.maildotool
To configure, edit commands.conf and credentials.conf or run 
maildotool -configure
to let maildotool open them for you.

There is also a maildotool daemon named maildotolld, which runs maildotool at 
specified interval. Just execute maildotoold for help

These scripts can be ran without instalation, so the debian package is just a conveniance.
