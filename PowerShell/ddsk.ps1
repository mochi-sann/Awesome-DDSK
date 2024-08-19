function Start-DDSK() {
    $red = "`e[31m"
    $green = "`e[32m"
    $blue = "`e[34m"
    $reset = "`e[0m"
    $dd = $blue + "ドド"
    $sk = $green + "スコ"
    $target = New-Object System.Collections.Queue
    $pattern = @($dd)
    1..3 | ForEach-Object { $pattern += $sk }
    1..3 | ForEach-Object { $pattern | ForEach-Object { $target.Enqueue($_) } }
    $history = New-Object System.Collections.Queue

    $elements = @($dd, $sk)
    while ($true) {
        $randomElement = $elements | Get-Random
        Write-Host $randomElement -NoNewline
        $history.Enqueue($randomElement)
        if (-not (Compare-Object -ReferenceObject $target -DifferenceObject $history )) {
            Write-Host $red"ラブ注入♡"$reset -ForegroundColor Red
            break
        }
        if ($history.Count -ge $target.Count) {
            $history.Dequeue() | Out-Null
        }
    }
}

Start-DDSK
