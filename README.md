# Contribution tracker

## What is this repository used for?

This repository is used to track my contributions to other repositories that are not in github.

## Contributions

You can view my contributions [here](./contributions.md).

## Automatically add contributions

You can automatically add contributions to this repository by using the following command:

```bash
./add-contribution.sh <-m <commit message>> [-r <repo>] [-i <iteration>] [-n] [-d]
```

| Option | Required? | Type | Default value | Description |
| ------ |:---------:|:----:|:-------------:|:----------- |
| -m     | ✔️       | string |     | The commit message to use when committing the changes to this repository. |
| -r     | ❌       | string | `-` | The name of the repo you contributed to. |
| -i     | ❌       | number | 1   | How many times to iterate over the script. This is useful if you want to add multiple contributions at once. |
| -n     | ❌       | bool   | false | Add a new day to your contributions. |
| -d     | ❌       | bool   | false | Do a "dry-run". Don't make changes or commits, just log it to console. Can be used for debug purposes. |


Using this script will help you add your contributions quickly and easily.