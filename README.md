# Deploy 🚀

## Example usage

```yml
name: Deploy 🚀
on: push
jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - name: git-ftp push
      uses: ilTuoBrand/deploy@releases/v1
      with:
        url: ${{ secrets.FTP_SERVER }}
        user: ${{ secrets.FTP_USERNAME }}
        password: ${{ secrets.FTP_PASSWORD }}
        options: --auto-init
```

- Read the [manual](man/git-ftp.1.md) for more options, features and examples.
