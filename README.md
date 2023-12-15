# Contribution tracker

## What is this repository used for?

This repository is used to track my contributions to other repositories that are not in github.

## Contributions

You can view my contributions [here](./contributions.md).

## Automatically add contributions

You can automatically add contributions to this repository by using the following command:

```bash
./add-contribution.sh <-m <commit message>> [-i <iteration>] [-a] [-d]
```

- `-m`: The commit message to use when committing the changes to this repository.
  - `<commit message>` (string): The commit message to use for the commit. This is also the message that will be used in [contributions.md](./contributions.md).
- `-i`: How many times to iterate over the script. This is useful if you want to add multiple contributions at once.
  - `<iteration>` (number)(default = 1): The number of times to iterate over the script.
- `-a`: Automatically add the current day to [contributions.md](./contributions.md). (Used the first time of the day)
- `-d`: Is used for a '*dry run*'. This will not commit any changes to this repository.

Using this script will help you add your contributions quickly and easily.