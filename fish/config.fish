set -gxp PATH /opt/homebrew/bin/ $HOME/.cargo/bin $HOME/go/bin /usr/local/go/bin /usr/local/bin/
#set -gx GOBIN $HOME/go/bin
#set -gx EDITOR vim

# git prompt settings
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_char_stateseparator ' '
set -g __fish_git_prompt_char_dirtystate "#"
set -g __fish_git_prompt_char_cleanstate "✔"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_conflictedstate "+"
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_cleanstate green 
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_branch brblue

# don't show any greetings
set fish_greeting ""
