# 示例：调用 GitHub API 获取用户信息

$token = Get-Content token.txt
$headers = @{ Authorization = "Bearer $token" }
$user = Invoke-RestMethod -Uri 'https://api.github.com/user' -Headers $headers
Write-Host $user.login
