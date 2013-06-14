_git_list_added(){
  __gitcomp "$(__git_heads)"
}

_git_list_local_commits(){
  __gitcomp "$(__git_heads)"
}

_git_switch_rails_branch(){
  __gitcomp "$(__git_heads)"
}
