$EmailFrom = "yourgmailaddress@gmail.com"
$EmailTo = "sendersaddress"
$Subject = "The subject of your email"
$Body = "What you want your email to say"

$SMTPServer = "smtp.gmail.com"
$SMTPPort = 587  # Port for TLS/STARTTLS encryption

$SMTPClient = New-Object Net.Mail.SmtpClient($SMTPServer, $SMTPPort)
$SMTPClient.EnableSsl = $true

# Replace "yourgmailaddress" and "yourpassword" with your actual Gmail credentials
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("yourgmailaddress@gmail.com", "yourpassword")

try {
    $SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)
    Write-Host "Email sent successfully!"
} catch {
    Write-Host "Failed to send the email. Error: $($_.Exception.Message)"
}

# Use "Pause" to keep the PowerShell window open until you press a key
Pause
