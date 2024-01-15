# Educates Educates

## How do I install these formulae?

`brew install educates/educates/<formula>`

Or `brew tap educates/educates` and then `brew install <formula>`.

## Formulas

- educates-cli

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Develop

Once the formula is ready to publish, veryify it with:

```
brew audit --strict --new --online <formula>
```

To push to the repo:

```
cd "$(brew --repository educates/educates)"
git checkout -b <branch name>
git add -A
git commit
```

Because the branch you're committing to doesn't exist on the remote server you'll have to do something like this the first time you push your changes:

```
git push --set-upstream origin <branch name>
```

This will create the remote branch and matching with the branch of the pull request you just created.
Once you've committed the formula to the repository and pushed it, you can create a pull request for it.
The pull request will run tests and create the bottles for the formula but won't publish them. Once the tests are completed add the **pr-pull** label to the PR. This will run an additional action to publish the bottles.
Once you have resolved all the issues the pull request will be complete and bottles for the formula will be available for download for people who use the tap.
