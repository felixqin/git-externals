Svn external (with --vcs):

  $ git init .
  Initialized empty Git repository in /tmp/cramtests-*/svn-target.t/.git/ (glob)
  $ git externals add -b trunk -c svn https://svn.riouxsvn.com/svn-test-repo/trunk ./ test-repo-svn
  Repo:   https://svn.riouxsvn.com/svn-test-repo/trunk
  Branch: trunk
  Ref:    None
    ./ -> ./test-repo-svn
  
  $ git externals update 2>&1 | grep -v "svn:mergeinfo"  # normalize git svn output
  externals sanity check passed!
  External trunk
  Cloning external trunk
  Initialized empty Git repository in /tmp/cramtests-*/svn-target.t/.git*externals/trunk/.git/ (glob)
  \tA\t*.* (esc) (glob)
  \tA\t*.* (esc) (glob)
  \tA\t*.* (esc) (glob)
  r15 = ed87ed5ee42a55f1a903a64d12fd11038b06fa97 (refs/remotes/git-svn)
  Checked out HEAD:
    https://svn.riouxsvn.com/svn-test-repo/trunk r15
  Retrieving changes from server:  trunk
  *-*-* *:*:* INFO[git-svn-clone-externals]: git svn rebase . (glob)
  Current branch master is up to date.
  Checking out commit git-svn

