# Contribution guidelines

Thanks for contributing!

## Pre-commit linting

I lint the shell scripts using pre-commit hooks through [icefox/git-hooks][icefox--git-hooks], and it would save me time if you could do the same before committing to your fork/clone. To do this:

1. Install [icefox/git-hooks][icefox--git-hooks] by cloning it and adding the repo to your shell's `PATH`.
2. Go to this repo, and run `git-hooks --install`. It should detect the hooks at `/.githooks`.
3. Now try to commit. If there are any syntax errors, the commit will abort. If there are any coding style errors, they'll be printed out but the commit will go through... it would be helpful if you could fix the errors and amend your commit; although it's fine if you want to put the fixes in a subsequent commit.

[icefox--git-hooks]: https://github.com/icefox/git-hooks

Thanks!
