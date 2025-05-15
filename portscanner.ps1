param(
    [string]$host = "google.com",
    [int]$port = 443
)

try {
    $connection = New-Object System.Net.Sockets.TcpClient
    $connection.Connect($host, $port)
    if ($connection.Connected) {
        Write-Output "Port $port is open on $host"
        $connection.Close()
    }
} catch {
    Write-Output "Port $port is closed or host unreachable."
}
