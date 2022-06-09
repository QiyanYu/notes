- #git
- title:: Basic Git
- # Intro to Git
  title:: Git
	- Git is a distributed version control system as opposed to a centralized version control system. This means that every developer's computer stores the entire history (including all old versions) of the entire project!
- # Other Git Features
	- ## `Stashing`
		- Stashing allows you to save your changes onto a stack without making a more permanent commit. It is equivalent to picking up your work-in-progress and placing it in a box to get back to later. In the meantime, your desk is now clean.
		  
		  Why might you want to use this?
			- Your files may be in a disorganized state, and you don’t want to commit yet, but you also don’t want to get rid of your changes.
			- You modified multiple files, but you dislike your changes and you would just like to get things back to how they were after your most recent commit. Then you can `stash` your code and then drop that stash rather than having to manually revert multiple files. (Be careful with this usage!)
			- You modified files but accidentally modified them on the wrong branch. Then you can `stash` your changes, switch branches, and unstash your changes so that they are all in the new branch.
	- ## `Rebasing`
		- Rebasing changes the parent commit of a specific commit. In doing this, it changes the commits so that it is no longer the same.
		- `Rebase` can be used as an alternative to `merge` for integrating changes from one branch to another. It is quite different from `merge` in that `merge` creates a new commit that has both parent branch commits as parents. Rebasing takes one set of commits from a branch and places them all at the end of the other branch.
		- There are different reasons why you would want to use `merge` versus `rebase`. One of these reasons is that `rebase` leads to a cleaner history when working with many different branches and team members.
	- ## `Revert`
		- `Revert` allows you to reverse the changes introduced by certain commits by recording new commits to undo the changes. This is a safer option that simply throwing away past commits. But again, use this with caution.
	- ## `Cherry Pick`
		- `Cherry pick` allows you to apply the changes introduced by some existing commits. For example, if you have two different branches, and your current branch lacks one or two commits that would be helpful but are only in the other branch, then you can `cherry pick` to grab those commits without merging or rebasing to get all the commits.