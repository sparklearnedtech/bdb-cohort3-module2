# Blockchain Developer Bootcamp Module 2 Exercise

This will be an application of what you've learned for module 2.

## Setup
1. Clone this repository by running git clone.
	```
	git clone https://github.com/sparklearnedtech/bdb-cohort3-module2.git
	```
2. Open the cloned project.
	```
	cd bdb-cohort3-module2
	```
3. Create your own branch using this format (firstname-lastname).
	```
	git branch john-doe
	```
4. Checkout your created branch.
	```
	git checkout john-doe
	```
5. Check the active branch. Make sure you are currently on your created branch, **not** the `main` branch. This repo has branch protection rule, and you cannot push to `main`.
	```
	git branch
	```
6. You may now start, and follow further instructions under [exercise](#Exercise).
7. As you make progress, you can start pushing in your branch:
	1. First you add your changes.

		By **either** adding a single file. Example:
		```
		git add 15_MyTokenContract.col
		```

		**Or** adding all files. Example:
		```
		git add .
		```

	2. Check your added files.
		```
		git status
		```

	3. Then commit your added files. A good commit message is a **short but clear summary** of your changes, and as pracice, should be in **present** tense. Example:
		```
		git commit -m "Add functions on 15_MyTokenContract.col"
		```

	4. And finally, push.
		```
		git push
		```
8. Pushing doesn't guarantee that you're done. So once you're comfortable for checking, just message mentor [@harveyjavier](https://github.com/harveyjavier) on Slack, and he will check your branch.

## Exercise

Deploy all the smart contracts discussed in chapters 1 and 2. Files are already provided in this repository.

As for chapter 3, deploy one token contract of either fungible or non-fungible with your chosen ERC standard. Also here, you're on your own in creating the contract. Good luck!

All the deployed contracts must be verified in Etherscan.

And as you deploy each smart contract, make sure to update [Deploy.md](Deploy.md) where you'll be putting all the links of your deployed contracts (_see  markdown file in your text editor_).

## Criteria
This exercise will be graded with the following criterias:
* Requirements & Delivery (5 pts.) - How you followed the instructions of the exercise and deliver its specific requirements.
* Runtime (5 pts.) - How your project will run seamlessly on the mentor's local end and environment.
* Code standard & cleanliness (5 pts.) - The tidyness of your code and its standard. Will be checked by linters.
* Creativity (5 pts.) - How presentable your project will look on runtime and how you played around with the project's components and functions.
