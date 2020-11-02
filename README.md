# Deploy 🚀

## Example usage

```
name: Deploy via git-ftp
on: push
jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: git-ftp push
      uses: ilTuoBrand/deploy@releases/v3
      with:
        url: "ftp://ftp.example.com/path/"
        user: ${{ secrets.FTP_USER }}
        password: ${{ secrets.FTP_PWD }}
        options: --auto-init
```

## Input parameters

Input parameter | Description | Required | Default
--- | --- | --- | ---
url | git-ftp url (see [documentation](https://github.com/git-ftp/git-ftp/blob/1.6.0/man/git-ftp.1.md#url)) | Yes | N/A
user | FTP username | Yes | N/A
password | FTP password | Yes | N/A
syncroot | Specifies a local directory to sync from as if it were the git project root path. | No | `.`
options | Additional options (see [documentation](https://github.com/git-ftp/git-ftp/blob/1.6.0/man/git-ftp.1.md#options)) | No | `--auto-init`
