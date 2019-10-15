# git-hook-test

Just a simple example of using git hooks that a setup for my own use ([SOURCE](https://www.viget.com/articles/two-ways-to-share-git-hooks-with-your-team/)).

__The git repository needs to be configured to use the local hooks.__   
Either through linking or by running ```git config core.hooksPath .githooks```.   
 This is done here using the makefile.

## How to

- ```$ git clone git@github.com:aradove/git-hook-test.git```
-  If your git version is 2.19 or newer:
    -  ```$ make init``` 
-  If your git version is older than 2.19:
    - ```$ make init_old```
- Test commiting with message without [ref: 123]:
    - ```$ git commit -m "added added some new feature"```    
      ```> [POLICY] Your message is not formatted correctly```
- Test commiting with message with [ref: 123]:
    - ```$ git commit -m "[ref: 123] added some new feature"```    
      ``` > [master 711b4bc] [ref: 123] added some new feature```   
      ``` > 1 file changed, 10 insertions(+)```    


