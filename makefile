# The following is used to make the local git repository use the
# hooks stored in .githooks
# How to set up local commits can be found here. 
# source: https://www.viget.com/articles/two-ways-to-share-git-hooks-with-your-team/

# For git version >= 2.19
init:
	git config core.hooksPath .githooks

# For git version < 2.19
init_old:
  find .git/hooks -type l -exec rm {} \;
  find .githooks -type f -exec ln -sf ../../{} .git/hooks/ \;
  
