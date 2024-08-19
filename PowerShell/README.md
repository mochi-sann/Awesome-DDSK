# PowerShell

PowerShellは、.NET上で動作する、構成管理と自動化のための言語です。
シェルとスクリプトの側面を持ち、Windows、Linux、macOSで動作します。

[公式サイト](https://learn.microsoft.com/ja-jp/powershell/)

## 実行方法

```sh
pwsh -f ./ddsk.ps1 # Run the script
pwsh # Run an PowerShell interactive shell
```

## Docker

```sh
docker build . -t ddsk:pwsh
docker run --rm ddsk:pwsh
```
