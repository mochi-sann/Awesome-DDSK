FROM mcr.microsoft.com/powershell:latest

WORKDIR /work

COPY ./ddsk.ps1 .

ENTRYPOINT ["pwsh", "-File", "./ddsk.ps1"]

