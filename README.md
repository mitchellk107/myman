myman is a beginner friendly command line tool that explains basic Linux commands in plain language with examples. 

It was inspired from the "man" command and it is designed to help new users quickly understand common commands like cat, ls, and cd. |

To install, make sure myman.bash is executable with chmod +x myman.bash, then run it once. For example, type:  ./myman.bash cat while in the directory to automatically set up a persistent alias in your ~/.bashrc. After that, reload your shell with source ~/.bashrc, and you can use the myman command globally, like myman ls or myman grep. 

The script is easy to customize too! You just open it and add new commands under the case "$1" in section. 

Feel free to improve as needed!
