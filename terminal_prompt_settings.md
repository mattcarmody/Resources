Hey Team,
I was setting up one of the laptops and thought I'd share some of my settings that I think can be useful to everyone. If you want to set up your terminal prompt to show more relevant information,especially while using Git, here are the advantages of my settings and instructions set up a machine like mine (for Linux). Here is a screenshot of what my terminal prompt looks like.

![fresh terminal prompt](/terminal_prompt_settings.png)

#### Advantages

* Doesn’t show name of the computer, which can be long and isn't relevant
* Shows the name of the git branch you’re on
* Shows an asterisk (*) if  files have changed since the last commit
* Shows a plus sign (+) if files have been staged since the last commit
* Color coded for easy reading (can be customized)
  * Username in purple
  * Git branch name & state in green (if in a Git repo)
  * Directory name in blue

#### Instructions

* Save this file in your home directory with the name git-completion.bash: https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
* Save this file in your home directory with the name git-prompt.sh: https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
* Check to see if you already have a file in your home directory named .bashrc (terminal command "ls -a" shows all files, including hidden ones)
  * If yes: copy paste the contents of the following file into it. Beware the last block of what’s already in .bashrc may need to stay at the end to work properly, so if it has a comment saying so, paste above that block. 
  * If no: save the following file as .bashrc
  * https://classroom.udacity.com/courses/ud775/lessons/2980038599/concepts/33331589510923
* Close and reopen terminal. 

You should now see a prompt that looks different than the default settings. Enjoy! Or don't and undo these changes! I'm just sharing a possibility, develop any way you please.
Matt
