
# Create user with particular shell (createuser)

Create a user with particular shell

## Example Usage

```json
"features": {
    "ghcr.io/rsperl/devcontainer-feature-usershell/createuser:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| username | Enter the username | string | root |
| userid | UID | string | 1000 |
| groupid | GID | string | 1000 |
| usershell | Give the full path to the shell | string | /bin/bash |



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/rsperl/devcontainer-feature-usershell/blob/main/src/createuser/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
